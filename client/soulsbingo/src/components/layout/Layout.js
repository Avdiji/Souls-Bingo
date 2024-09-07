import { Link } from "react-router-dom";
import classes from "./Layout.module.css";

export default function Layout(props) {
  return (
    <div className={classes.layout}>
      <div>
        <div>{props.children}</div>
        <div className={classes.footer}>
          <Link to="mailto:bingoo.boards@gmail.com">Contact Me!</Link>
          |
          <Link to="/impressum">Impressum</Link>
        </div>
      </div>
    </div>
  );
}
