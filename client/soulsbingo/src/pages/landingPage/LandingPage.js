import classes from "./LandingPage.module.css";
import { useState } from "react";
import LandingPageHeader from "./LandingPageHeader";
import StartButton from "./StartButton";
import LandingPageInput from "./LandingPageInput";
import { joinRoom } from "../../utils/clientSocketUtils";
import { useNavigate } from "react-router-dom";

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
      <LandingPageHeader />
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
