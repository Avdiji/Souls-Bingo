import classes from "./ColorButton.module.css";

export default function ColorButton(props) {
  const { color, activeColor, onClick } = props;
  const isActive = color === activeColor;

  const buttonStyle = {
    backgroundColor: color,
  };

  return (
    <button
      className={
        isActive
          ? `${classes.colorButton} ${classes.active}`
          : classes.colorButton
      }
      style={buttonStyle}
      onClick={() => onClick(color)}
    />
  );
}
