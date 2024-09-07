import classes from "./GameButton.module.css";

export default function GameButton(props) {
  const { gameName, gameID, activeGameID, onClick } = props;

  const isActive = gameID === activeGameID;

  return (
    <div className={classes.gameButton}>
      <button
        className={isActive ? `${classes.button} ${classes.active}` : classes.button}
        onClick={() => onClick(gameID)}
      >
        {gameName}
      </button>
    </div>
  );
}
