import classes from "./StartButton.module.css";

export default function StartButton(props) {
  return (
    <div className={classes.buttons}>
      <button
        className={classes.btn}
        onClick={props.onClick}
      >
        <span></span>
        <p data-text={props.hoverText} data-title={props.defaultText}></p>
      </button>
    </div>
  );
}
