import { useEffect } from "react";

export default function BingoPage(props) {
  const roomID = props.roomID;
  const message = "FITOREN";

  const sendMessage = () => {
    console.log(roomID);
    props.socket.emit("send_message", { message, roomID });
  };

  useEffect(() =>{
    props.socket.on("receive_message", (data) =>{
      alert(data.message);
    });
  }, [props.socket]);

  return (
    <div>
      <h1>Bingo Page</h1>
      <button onClick={sendMessage}>Send MEssage to Room</button>
    </div>
  );
}
