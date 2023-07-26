const postgresUtils = require("./postgresUtils");

function joinRoom(socket, client) {
  socket.on("join_room", async (data) => {

    if (await postgresUtils.roomExists(client, data.roomName)) {
      console.log("This Room already exists");
    } else {
      await postgresUtils.createNewRoom(client, data.roomName);
    }

    // // console.log("User " + data.nickname + " Joined Room: " + data.roomID);
    // socket.join(data.roomID);
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
}

module.exports = {
  handleConnection: joinRoom,
  handleGameLogic,
};
