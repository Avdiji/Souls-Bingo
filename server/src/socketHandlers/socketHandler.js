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
      console.log("Something went wrong while trying to join the room");
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
    console.log(data.challenge + " has been marked with following colors: " + data.markingColor);
  });
}

module.exports = {
  handleJoinRoom,
  handleClientInteraction
};
