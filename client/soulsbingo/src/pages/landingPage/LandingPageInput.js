import classes from "./LandingPageInput.module.css";

export default function LandingPageInput(props) {

  const textColor = {color: props.color};

  return (
    <div className={classes.centerInput}>
      <div className={classes.textInputWrapper}>
        <input
          onChange={props.onChange}
          style={textColor}
          placeholder={props.placeholder}
          type="text"
          className={classes.textInput}
        />
      </div>
    </div>
  );
}
