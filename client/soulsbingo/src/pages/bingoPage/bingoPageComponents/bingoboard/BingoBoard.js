import React, { useState } from "react";
import classes from "./BingoBoard.module.css";
import BingoCard from "./BingoCard";
import ColorButtonContainer from "./colorButtons/ColorButtonContainer";

export default function BingoBoard(props) {
  const [currentColor, setCurrentColor] = useState("red");
  const rows = 5;
  const columns = 5;

  const getChallengeAtIndex = (i) => { return props.challenges[i]; };

  var cardKey = 0;
  const generateKey = () => { return cardKey++; };

  return (
    <div>
      <ColorButtonContainer setCurrentColor={setCurrentColor} currentColor={currentColor} />
      <div className={classes.cardContainer}>
        {Array.from({ length: rows }).map((_, rowIndex) => (
          <div key={`row-${rowIndex}`}>
            {Array.from({ length: columns }).map((_, colIndex) => (
              <BingoCard key={generateKey()} challenge={getChallengeAtIndex(cardKey).challenge} backgroundColors={getChallengeAtIndex(cardKey).color} hoverColor={currentColor} socket={props.socket} roomName={props.roomName}/>
            ))}
          </div>
        ))}
      </div>
    </div>
  );
}
