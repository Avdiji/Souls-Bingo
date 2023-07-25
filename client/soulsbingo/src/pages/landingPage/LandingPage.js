import classes from "./LandingPage.module.css";
import { useState } from "react";
import StartButton from "./StartButton";
import LandingPageInput from "./LandingPageInput";
import { joinRoom } from "../../utils/clientSocketUtils";
import { useNavigate } from "react-router-dom";
import Header from "../../components/header/Header";

export default function LandingPage(props) {
  const [roomIdInput, setRoomIdInput] = useState("");
  const [nicknameInput, setNicknameInput] = useState("");
  const nav = useNavigate();

  const onStartClick = () => {
    if (roomIdInput !== "" && nicknameInput !== "") {
      joinRoom(props.socket, roomIdInput, props.setRoomID, nicknameInput);
      nav("/bingo");
    }
  };

  return (
    <div className={classes.landingPage}>
      <Header src="images\ds1.jpg"/>
      <LandingPageInput
        placeholder="Nickname"
        onChange={(e) => setNicknameInput(e.target.value)}
      />

      <LandingPageInput
        placeholder="Room-ID"
        onChange={(e) => setRoomIdInput(e.target.value)}
      />

      <StartButton onClick={onStartClick} />
    </div>
  );
}
