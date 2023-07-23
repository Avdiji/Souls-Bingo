// function to connect the hosts to their respective rooms
function handleConnection(socket) {
    console.log("Host has connected to server: " + socket.id);
  
    socket.on("join_room", (data) => {
      console.log("User " + data.nickname + " Joined Room: " + data.roomID);
      socket.join(data.roomID);
    });
  }
  
  // game logic
  function handleGameLogic(socket) {
    socket.on("send_message", (data) => {
      console.log("Sending Message to Room: " + data.roomID);
      socket.to(data.roomID).emit("receive_message", data);
    });

  }
  
  module.exports = {
    handleConnection,
    handleGameLogic,
  };