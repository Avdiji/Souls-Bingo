import { useEffect } from "react";
import { sendMessage } from "../../utils/clientSocketUtils";

export default function BingoPage(props) {
  const roomID = props.roomID;

  useEffect(() =>{
    props.socket.on("receive_message", (data) =>{
      alert(data.message);
    });
  }, [props.socket]);

  return (
    <div>
      <h1>Bingo Page</h1>
      <button onClick={() => sendMessage(props.socket, roomID)}>Send Message to Room</button>
    </div>
  );
}
