const postgresUtils = require("./postgresUtils");

function handleJoinRoom(socket, client) {
  socket.on("join_room", async (data) => {
    const roomName = data.roomName;
    const username = data.username;

    try {
      if (await postgresUtils.roomExists(client, roomName)) {
        console.log("This Room already exists");
      } else {
        await postgresUtils.createNewRoom(client, roomName);
        await postgresUtils.createUser(client, username);
        await postgresUtils.addRoomUser(client, roomName, username);
        client.release();
      }

      socket.join(roomName);
      console.log("User " + username + " Joined Room: " + roomName);
      
    } catch (err) {
      console.log("Something went wrong while trying to join the room");
      console.log(err);
    }
  });
}

// game logic
function handleGameLogic(socket, client) {
  socket.on("send_message", async (data) => {
    console.log("Sending Message to Room: " + data.roomID);

    try {
      console.log("Erfolg :)");
    } catch (err) {
      console.log("SCHEISEN :(");
      console.log(err);
    }
  });

  client.release();
}

module.exports = {
  handleJoinRoom,
  handleGameLogic,
};
