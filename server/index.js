const express = require('express');
const app = express();

const http = require("http");
const { Server } = require('socket.io');

const cors = require('cors');

app.use(cors());

const server = http.createServer(app);

const io = new Server(server, {
    cors: {
        origin: "http://localhost:3000",
        methods: ["GET", "POST"],
    },
});
 
server.listen(3001, () =>{
    console.log("Server is Running");
});

io.on("connection", (socket) =>{
    console.log("Host has connected to server");
    console.log(socket.id);

    socket.on("join_room", (data) =>{
        console.log("Joined Room: " + data);
        socket.join(data);
    });

    socket.on("send_message", (data) =>{
        console.log("Sending Message to Room: " + data.roomID);
        socket.to(data.roomID).emit("receive_message", data);
    });

});