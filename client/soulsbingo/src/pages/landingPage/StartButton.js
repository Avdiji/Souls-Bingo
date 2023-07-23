import classes from "./StartButton.module.css";

export default function StartButton(props) {
  return (
    <div className={classes.buttons}>
      <button
        className={classes.btn}
        onClick={props.onClick}
      >
        <span></span>
        <p data-text="Good Luck!" data-title="Join Room"></p>
      </button>
    </div>
  );
}
