import classes from "./LandingPage.module.css";
import { useState } from "react";
import StartButton from "./StartButton";
import LandingPageInput from "./LandingPageInput";
import { joinRoom } from "../../clientSocketUtils";
import { useNavigate } from "react-router-dom";
import Header from "../../components/header/Header";

export default function LandingPage(props) {
  const [roomNameInput, setRoomNameInput] = useState("");
  const [nicknameInput, setNicknameInput] = useState("");
  const nav = useNavigate();

  const onStartClick = () => {
    if (roomNameInput !== "" && nicknameInput !== "") {
      joinRoom(props.socket, roomNameInput, props.setRoomName, nicknameInput);
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
        onChange={(e) => setRoomNameInput(e.target.value)}
      />

      <StartButton onClick={onStartClick} />
    </div>
  );
}
