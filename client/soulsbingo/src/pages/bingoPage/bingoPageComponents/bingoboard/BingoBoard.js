import React from "react";
import classes from "./BingoBoard.module.css";
import BingoCard from "./BingoCard";
import ColorButtonContainer from "./colorButtons/ColorButtonContainer";

export default function BingoBoard() {
  const rows = 5;
  const columns = 5;
  
  var cardKey = 0;
  const generateKey = () => { return cardKey++; };

  return (
    <div>
      <ColorButtonContainer/>
      <div className={classes.cardContainer}>
        {Array.from({ length: rows }).map((_, rowIndex) => (
          <div key={`row-${rowIndex}`}>
            {Array.from({ length: columns }).map((_, colIndex) => (
              <BingoCard key={generateKey()} challenge={cardKey + ""}/>
            ))}
          </div>
        ))}
      </div>
    </div>
  );
}
