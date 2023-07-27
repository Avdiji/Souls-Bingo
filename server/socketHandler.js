const postgresUtils = require("./postgresUtils");

function handleJoinRoom(socket, client) {
  socket.on("join_room", async (data) => {
    const roomName = data.roomName;
    const username = data.username;

    try {
      var roomID = await postgresUtils.getRoomIdByName(client, roomName);

      const roomExists = roomID !== -1;
      if (roomExists) {
        console.log("This Room already exists");
      } else {
        await postgresUtils.createNewRoom(client, roomName);
        await postgresUtils.createUser(client, username);

        const userID = await postgresUtils.getUserIdByUsername(client, username);
        roomID = await postgresUtils.getRoomIdByName(client, roomName);

        await postgresUtils.addRoomUser(client, roomID, userID);
        await postgresUtils.addInitialChallengesToRoom(client, roomID);

        socket.join(roomName);
        console.log("User " + username + " Joined Room: " + roomName);
      }

    } catch (err) {
      console.log("Something went wrong while trying to join the room");
      console.log(err);
    }
  });
}


module.exports = {
  handleJoinRoom,
  handleGameLogic,
};
