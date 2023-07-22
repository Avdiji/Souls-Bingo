import { Link } from "react-router-dom";
import classes from "./LandingPage.module.css";
import { useState } from "react";

export default function LandingPage(props) {
  const [roomIdInput, setRoomIdInput] = useState("");

  const joinRoom = () => {
    if (roomIdInput !== "") {
      props.setRoomID(roomIdInput);
      props.socket.emit("join_room", roomIdInput);
    }
  };

  return (
    <div className={classes.landingPage}>
      <div className={classes.imgContainer}>
        <h2>SOULS BINGO</h2>
        <img src="images\ds1.png" alt="" />
      </div>

      <div className={classes.inputContainer}>
        <div>
          <input
            placeholder="Room-ID"
            onChange={(e) => setRoomIdInput(e.target.value)}
          />
          <Link to="/bingo">
            <button onClick={joinRoom}>Join Room</button>
          </Link>
        </div>
      </div>
    </div>
  );
}
