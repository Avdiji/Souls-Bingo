function joinRoom(socket, pool) {
  socket.on("join_room", async (data) => {
    try {
      const client = await pool.connect();
      const checkForRoomName = "SELECT id FROM rooms WHERE roomName = $1";
      const result = await client.query(checkForRoomName, [data.roomName]);

      if (result.rowCount > 0) {
        console.log("This Room already exists");
      } else {
        console.log("This Room need to be created");
      }
    } catch (err) {
      console.log("Unable to connect to the soulsbingo-database");
      console.log(err);
    }

    // // console.log("User " + data.nickname + " Joined Room: " + data.roomID);
    // socket.join(data.roomID);
  });
}

// game logic
function handleGameLogic(socket, pool) {
  socket.on("send_message", async (data) => {
    console.log("Sending Message to Room: " + data.roomID);

    try {
      const client = await pool.connect();
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
