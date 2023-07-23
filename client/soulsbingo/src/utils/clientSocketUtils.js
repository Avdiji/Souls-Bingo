import io from "socket.io-client";

export const initSocket = () => {
  const socket = io.connect("http://localhost:3001");
  return socket;
};

export const joinRoom = (socket, roomIdInput,setGlobalRoomID, nickname) => {
    socket.emit("join_room", {
      roomID: roomIdInput,
      nickname: nickname,
    });
    setGlobalRoomID(roomIdInput);
};


export const sendMessage = (socket, roomID) =>{
    const message = roomID;
    socket.emit("send_message", { message, roomID });
}
