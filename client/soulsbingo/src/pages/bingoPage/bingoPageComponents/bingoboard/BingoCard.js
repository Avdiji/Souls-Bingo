import React, { useCallback, useEffect, useState } from "react";
import classes from "./BingoCard.module.css";
import { markCard } from "../../../../clientSocketUtils";

export default function BingoCard(props) {
  const { challenge, hoverColor, backgroundColors, socket, roomName } = props;
  const [isHovered, setIsHovered] = useState(false);

  const generateBackground = useCallback(() => {
    const colorsArray = backgroundColors.split("_").filter(color => color !== "");
    switch (colorsArray.length) {
      case 1: return `linear-gradient(${colorsArray[0]} 0%, ${colorsArray[0]} 100%)`;
      case 2: return `linear-gradient(135deg, ${colorsArray[0]} 0%, ${colorsArray[0]} 50%, ${colorsArray[1]} 50%, ${colorsArray[1]} 100%)`;
      case 3: return `linear-gradient(135deg, ${colorsArray[0]} 0%, ${colorsArray[0]} 33%, ${colorsArray[1]} 33%, ${colorsArray[1]} 66%, ${colorsArray[2]} 66%, ${colorsArray[2]} 100%)`;
      case 4: return `linear-gradient(135deg, ${colorsArray[0]} 0%, ${colorsArray[0]} 25%, ${colorsArray[1]} 25%, ${colorsArray[1]} 50%, ${colorsArray[2]} 50%, ${colorsArray[2]} 75%, ${colorsArray[3]} 75%, ${colorsArray[3]} 100%)`;
      default: return `linear-gradient(rgba(37,37,37,0.8) 0%,rgba(37,37,37,0.8) 100%)`;
    }
  }, [backgroundColors]);

  const onChallengeMarked = () => {
    const colorsArray = backgroundColors.split("_").filter(color => color !== "");
    if (colorsArray.indexOf(hoverColor) === -1) {
      markCard(socket, roomName, challenge, backgroundColors + hoverColor + "_");

    }
  };

  useEffect(() => {
    setGeneratedBackgroundStyle(generateBackground());
  }, [backgroundColors,generateBackground]);

  const [generatedBackgroundStyle, setGeneratedBackgroundStyle] = useState(() => generateBackground());
  const cardStyle = {
    boxShadow: `0 0 15px 10px ${isHovered ? hoverColor : "transparent"} inset`,
    background: generatedBackgroundStyle
  };

  return (
    <div
      className={classes.bingoCard}
      style={cardStyle}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
      onClick={onChallengeMarked}
    >
      <p>{challenge}</p>
    </div>
  );
}
