import classes from "./BingoRedirect.module.css";
import StartButton from "../../../../components/startButton/StartButton";
import { useNavigate } from "react-router-dom";

export default function BingoRedirect() {
  const nav = useNavigate();

  return (
    <div className={classes.bingoRedirect}>
      <h2>You need to create or join a Room first</h2>
      <StartButton
        hoverText="Lets Go!"
        defaultText="Join or Create Room"
        onClick={() => nav("/")}
      />
    </div>
  );
}
