const { Pool } = require("pg");
// Create a database connection pool
const pool = new Pool({
  user: "soulsbingoClient",
  host: "soulsbingo_db", // This corresponds to the service name in the docker-compose.yaml
  database: "soulsBingoDB",
  password: "soulsBingoDB_PASSWORD",
  port: 5432,
});

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
    handleConnection,
    handleGameLogic,
  };