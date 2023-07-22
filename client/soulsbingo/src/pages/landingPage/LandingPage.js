import classes from "./LandingPage.module.css";

export default function LandingPage() {
  return (
    <div className={classes.landingPage}>
      <div className={classes.imgContainer}>
        <h2>SOULS BINGO</h2>
        <img src="images\ds1.png" alt="" />
      </div>

      <div className={classes.inputContainer}>
        <div>
          <input placeholder="Room-ID" />
          <button>Create Room</button>
        </div>

        <div>
          <input placeholder="Room-ID" />
          <button>Join Room</button>
        </div>
      </div>
    </div>
  );
}
