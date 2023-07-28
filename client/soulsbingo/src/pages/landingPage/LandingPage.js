import classes from "./LandingPage.module.css";
import { useEffect, useState } from "react";
import StartButton from "./StartButton";
import LandingPageInput from "./LandingPageInput";
import { joinRoom } from "../../clientSocketUtils";
import { useNavigate } from "react-router-dom";
import Header from "../../components/header/Header";

export default function LandingPage(props) {
  const [roomNameInput, setRoomNameInput] = useState("");
  const [usernameInput, setUsernameInput] = useState("");
  const [roomPwInput, setRoomPwInput] = useState("");
  const [pwColor, setPwColor] = useState("white")

  const nav = useNavigate();

  useEffect(() => {
    props.socket.on("receive_correctPwConfirmation", (isPwCorrect) => {
      if (isPwCorrect) {
        nav("/bingo");
        setPwColor("white");
      }else{
        setPwColor("red");
      }
    });
  }, [props.socket]);

  const requestJoiningRoom = () => {
    if (roomNameInput !== "" && usernameInput !== "" && roomPwInput !== "") {
      joinRoom(props.socket, roomNameInput, props.setRoomName, roomPwInput, props.setRoomPW, usernameInput);
    }
  };

  return (
    <div className={classes.landingPage}>
      <Header src="images\ds1.jpg" />
      <LandingPageInput
        placeholder="Nickname"
        onChange={(e) => setUsernameInput(e.target.value)}
      />

      <LandingPageInput
        placeholder="Room-ID"
        onChange={(e) => setRoomNameInput(e.target.value)}
      />

      <LandingPageInput
        placeholder="Room-Password"
        color={pwColor}
        onChange={(e) => setRoomPwInput(e.target.value)}
      />

      <StartButton onClick={requestJoiningRoom} />
    </div>
  );
}
