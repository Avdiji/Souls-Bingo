import ColorButton from "./ColorButton";
import classes from "./ColorButtonContainer.module.css";

export default function ColorButtonContainer(props) {
  const { currentColor, setCurrentColor} = props;

  return (
    <div className={classes.colorButtonContainer}>
      <ColorButton color="red" activeColor={currentColor} onClick={setCurrentColor}/>
      <ColorButton color="blueviolet" activeColor={currentColor} onClick={setCurrentColor}/>
      <ColorButton color="orange" activeColor={currentColor} onClick={setCurrentColor}/>
      <ColorButton color="green" activeColor={currentColor} onClick={setCurrentColor}/>
    </div>
  );
}
