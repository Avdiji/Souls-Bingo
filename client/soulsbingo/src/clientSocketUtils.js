import io from "socket.io-client";

export const initSocket = () => {
  const socket = io.connect("http://localhost:3001/ws");
  return socket;
};

/** Function requests a connection to a room */
export const joinRoom = (socket, roomNameInput, setGlobalRoomName, roomPwInput, username) => {
  socket.emit("join_room", {
    roomName: roomNameInput,
    roomPW: roomPwInput,
    username: username
  });
  setGlobalRoomName(roomNameInput);
};

/** Function marks a bingoCard with a specific color */
export const markCard = (socket, roomName, cardChallenge, markingColor) => {
  socket.emit("mark_card", {
    roomName: roomName,
    challenge: cardChallenge,
    markingColor: markingColor
  });
}

export const changeGameID = (socket, roomName, gameID) => {
  socket.emit("change_gameid", {
    roomName: roomName,
    gameID: gameID
  });
}