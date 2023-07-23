// setup
const app = require("express")();
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");
const { handleConnection, handleGameLogic } = require("./socketHandler");

// create and run server
app.use(cors());
const server = http.createServer(app);
const io = new Server(server, {
  cors: { origin: "http://localhost:3000", methods: ["GET", "POST"] },
});
server.listen(3001, () => {
  console.log("Server is Running");
});


io.on("connection", (socket) => {
  handleConnection(socket);
  handleGameLogic(socket);
});
