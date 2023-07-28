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

module.exports = {
  handleJoinRoom,
};
