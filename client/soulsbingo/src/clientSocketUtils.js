import io from "socket.io-client";

export const initSocket = () => {
  const socket = io.connect("http://localhost:3001");
  return socket;
};

export const joinRoom = (socket, roomNameInput,setGlobalRoomName, username) => {
    socket.emit("join_room", {
      roomName: roomNameInput,
      username: username,
    });
    setGlobalRoomName(roomNameInput);
};


export const sendMessage = (socket, roomID) =>{
    const message = roomID;
    socket.emit("send_message", { message, roomID });
}
