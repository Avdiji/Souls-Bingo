import classes from "./Header.module.css";

export default function Header(props) {
  return (
    <div className={classes.header}>
        <h2>SOULS BINGO</h2>
        <img src={props.src} alt="" />
    </div>
  );
}
