import classes from "./GameButtons.module.css";
import GameButton from "./GameButton";

export default function GameButtons(props) {
  const { activeGameID, setActiveGameID } = props;

  const onButtonClick = (gameID) => {
    setActiveGameID(gameID);
  };

  return (
    <div className={classes.gameButtons}>
      <GameButton
        gameName="Dark Souls I"
        gameID={1}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
      <GameButton
        gameName="Dark Souls II"
        gameID={2}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
      <GameButton
        gameName="Dark Souls III"
        gameID={3}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
      <GameButton
        gameName="Demon Souls"
        gameID={4}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
      <GameButton
        gameName="Bloodborne"
        gameID={5}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
      <GameButton
        gameName="Elden Ring"
        gameID={6}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
      <GameButton
        gameName="Sekiro"
        gameID={7}
        activeGameID={activeGameID}
        onClick={onButtonClick}
      />
    </div>
  );
}
