import classes from "./BingoPage.module.css";
import {  useState } from "react";
import Header from "../../components/header/Header";
import GameButtons from "./bingoPageComponents/gameButtons/GameButtons";
import BingoBoard from "./bingoPageComponents/bingoboard/BingoBoard";

export default function BingoPage(props) {
  const [activeGameID, setActiveGameID] = useState(1);
  const roomName = props.roomName;

  const getHeaderSrc = () =>{
    switch(activeGameID){
      case 1: return "images\\ds1.jpg";
      case 2: return "images\\ds2.jpg";
      case 3: return "images\\ds3.jpg";
      case 4: return "images\\demonsouls.png";
      case 5: return "images\\bloodborne.jpg";
      case 6: return "images\\eldenring.jpg";
      case 7: return "images\\sekiro.jpg";
      default: return "";
    }
  };


  return (
    <div className={classes.bingoPage}>
      <Header src={getHeaderSrc()}/>
      <GameButtons activeGameID={activeGameID} setActiveGameID={setActiveGameID}/>
      <BingoBoard/>
      <button>FITORES MINORES</button>
    </div>
  );
}



// useEffect(() => {
//   props.socket.on("receive_message", (data) => {
//     alert(data.message);
//   });
// }, [props.socket]);


// <button onClick={() => sendMessage(props.socket, roomID)}>
// Send Message to Room
// </button>