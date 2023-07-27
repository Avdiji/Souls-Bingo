// setup
const app = require("express")();
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");
const { handleJoinRoom, handleGameLogic } = require("./socketHandler");
const { Pool } = require("pg");

require("dotenv").config();
const pool = new Pool({
  user: process.env.POSTGRES_USER,
  host: process.env.POSTGRES_HOST,
  database: process.env.POSTGRES_DB,
  password: process.env.POSTGRES_PASSWORD,
  port: process.env.DB_PORT,
});

var client;
async function retryConnect() {
  console.log("Trying to connect to soulsbingo database...");
  try {
    client = await pool.connect();
    console.log("Successfully connected to soulsbingo database");
  } catch (err) {
    console.error("Failed to connect to soulsbingo database");
    await new Promise((resolve) => setTimeout(resolve, 2000));
    await retryConnect();
  }
}

// connect to database before starting server
retryConnect().then(() => {
  // create and run server
  app.use(cors());
  const server = http.createServer(app);
  const io = new Server(server, {
    cors: { origin: process.env.SB_ORIGIN, methods: ["GET", "POST"] },
  });

  server.listen(process.env.SERVER_PORT, () => {
    console.log("Server is Running");
  });

  io.on("connection", (socket) => {
    console.log("Client has connected to server. Client-ID: " + socket.id);

    handleJoinRoom(socket, client);
    handleGameLogic(socket, client);
  });
});
