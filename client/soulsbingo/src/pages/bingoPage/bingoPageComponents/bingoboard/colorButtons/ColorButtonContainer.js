import ColorButton from "./ColorButton";
import classes from "./ColorButtonContainer.module.css";
import { useState } from "react";

export default function ColorButtonContainer() {
  const [activeColor, setActiveColor] = useState("red");

  return (
    <div className={classes.colorButtonContainer}>
      <ColorButton color="red" activeColor={activeColor} onClick={setActiveColor}/>
      <ColorButton color="blue" activeColor={activeColor} onClick={setActiveColor}/>
      <ColorButton color="yellow" activeColor={activeColor} onClick={setActiveColor}/>
      <ColorButton color="lightgreen" activeColor={activeColor} onClick={setActiveColor}/>
    </div>
  );
}
