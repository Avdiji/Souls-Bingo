const postgresUtils = require("../postgresUtils");
const { handleInitialJoin, handleJoinPostRoomCreation } = require("./handleRoomConnections");

function handleJoinRoom(socket, client) {
  socket.on("join_room", async (data) => {
    const roomName = data.roomName;
    try {
      var roomID = await postgresUtils.getRoomIdByName(client, roomName);
      if (roomID !== -1) {
        handleJoinPostRoomCreation(socket, client, data);
      } else {
        handleInitialJoin(socket, client, data);
      }
    } catch (err) {
      console.log(err);
    }
  });
}

function handleClientInteraction(socket, client) {
  socket.on("mark_card", async (data) => {
    const roomID = await postgresUtils.getRoomIdByName(client, data.roomName);
    await postgresUtils.updateColorOfChallengeInRoom(client, roomID, data.challenge, data.markingColor);
    const challenges = await postgresUtils.getExistingChallengesOfRoomWithId(client, roomID);
    socket.emit("receive_challenges", challenges);
    socket.to(data.roomName).emit("receive_challenges", challenges);
  });

  socket.on("change_gameid", async (data) => {
    const roomID = await postgresUtils.getRoomIdByName(client, data.roomName);

    await postgresUtils.updateGameIdOfRoom(client, roomID, data.gameID);
    await postgresUtils.deleteChallengesFromRoom(client, roomID);
    
    await postgresUtils.addInitialChallengesToRoom(client, roomID);
    const dbGameID = await postgresUtils.getGameIdOfRoom(client, roomID);

    const challenges = await postgresUtils.getExistingChallengesOfRoomWithId(client, roomID);

    socket.emit("receive_challenges", challenges);
    socket.emit("receive_gameid", dbGameID);

    socket.to(data.roomName).emit("receive_challenges", challenges);
    socket.to(data.roomName).emit("receive_gameid", dbGameID);
  });
}

function handleClientDisconnect(socket, client) {
  socket.on('disconnect', async () => {
    await postgresUtils.updateUserActive(client, socket.id, false);
    const roomsWithDisconnectedUser = await postgresUtils.getRoomsWithUser(client, socket.id);

    var saveToRemoveInactiveUsers = true;
    for (const room of roomsWithDisconnectedUser) {
      if (!await postgresUtils.isRoomActive(client, room.roomid)) {
        await postgresUtils.deleteChallengesFromRoom(client, room.roomid);
        await postgresUtils.deleteRoomFromRoomUsers(client, room.roomid);
        await postgresUtils.deleteRoomWithID(client, room.roomid);
      } else {
        saveToRemoveInactiveUsers = false;
      }
    }
    if (saveToRemoveInactiveUsers) { await postgresUtils.deleteInactiveUsers(client); }
    console.log("Client has disconnected from server. Client-ID: " + socket.id);
  })
}

module.exports = {
  handleJoinRoom,
  handleClientInteraction,
  handleClientDisconnect
};
