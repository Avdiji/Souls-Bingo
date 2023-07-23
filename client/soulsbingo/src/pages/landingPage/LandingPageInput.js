import classes from "./LandingPageInput.module.css";

export default function LandingPageInput(props) {
  return (
    <div className={classes.centerInput}>
      <div className={classes.textInputWrapper}>
        <input
          onChange={props.onChange}
          placeholder={props.placeholder}
          type="text"
          className={classes.textInput}
        />
      </div>
    </div>
  );
}
