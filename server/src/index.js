const express = require("express");
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");
const { Pool } = require("pg");
const {
  handleJoinRoom,
  handleClientInteraction,
  handleClientDisconnect,
} = require("./socketHandlers/socketHandler");

require("dotenv").config();

const app = express();

// DB pool configuration
const pool = new Pool({
  user: process.env.POSTGRES_USER,
  host: process.env.POSTGRES_HOST,
  database: process.env.POSTGRES_DB,
  password: process.env.POSTGRES_PASSWORD,
  port: process.env.DB_PORT,
});

// Cors configuration
const corsOptions = {
  origin: [
    process.env.SB_ORIGIN,
    process.env.SB_ORIGIN2,
    process.env.SB_ORIGIN3,
  ],
  methods: ["GET", "POST"]
};


let client;
// Function to connect to the database with retry logic
async function retryConnect() {
  console.log("Attempting to connect to soulsbingo database...");
  try {
    client = await pool.connect();
    console.log("Successfully connected to soulsbingo database");
  } catch (err) {
    console.error("Database connection failed. Retrying in 2 seconds...");
    await new Promise(resolve => setTimeout(resolve, 2000));
    await retryConnect(); // Retry recursively
  }
}


// Start the server and handle connections after the database connects
retryConnect().then(() => {
  app.use(cors(corsOptions)); // apply cors for Express
  const server = http.createServer(app); // Create HTTP server for both Express and Socket.io
  const io = new Server(server, { cors: corsOptions, }); // Initialize Socket.io with the same CORS options
  server.listen(process.env.SERVER_PORT, () => { console.log(`Server is running...`); }); // Start the server on specified port

  // Handle WebSocket connections
  io.on("connection", (socket) => {
    console.log(`Client connected: ${socket.id}`);

    // Handle socket events
    handleJoinRoom(socket, client);
    handleClientInteraction(socket, client);
    handleClientDisconnect(socket, client);
  });
}).catch(error => {
  console.error("Server failed to start due to database connection issues:", error);
});
