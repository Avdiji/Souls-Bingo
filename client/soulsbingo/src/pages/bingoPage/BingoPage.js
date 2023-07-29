import { useState } from "react";
import classes from "./BingoPage.module.css";
import Header from "../../components/header/Header";
import GameButtons from "./bingoPageComponents/gameButtons/GameButtons";
import BingoBoard from "./bingoPageComponents/bingoboard/BingoBoard";

export default function BingoPage(props) {
  const [activeGameID, setActiveGameID] = useState(1);

  const getHeaderSrc = () => {
    switch (activeGameID) {
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
    props.roomName === "" ? <p>REMINDER TO ENTER A ROOM</p> : (<div className={classes.bingoPage}>
      <Header src={getHeaderSrc()} />
      <GameButtons
        activeGameID={activeGameID}
        setActiveGameID={setActiveGameID}
      />
      <BingoBoard
        challenges={props.challenges}
        socket={props.socket}
        roomName={props.roomName}
      />
    </div>)
  );
}
