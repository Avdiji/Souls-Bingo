import classes from "./BingoCard.module.css";

export default function BingoCard(props) {
  return (
    <div className={classes.bingoCard}>
      <p>{props.challenge}</p>
    </div>
  );
}
