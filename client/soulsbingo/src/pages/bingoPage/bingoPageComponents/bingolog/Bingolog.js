import { useEffect, useRef } from "react";
import classes from "./Bingolog.module.css";

export default function Bingolog(props) {
  const textareaRef = useRef(null);

  useEffect(() => {
    scrollToBottom();
  }, [props.bingolog]);

  function scrollToBottom() {
    const textarea = textareaRef.current;
    if (textarea) {
      textarea.scrollTop = textarea.scrollHeight;
    }
  }

  return (
    <div className={classes.bingolog}>
      <textarea
        ref={textareaRef}
        readOnly
        value={props.bingolog}
        onChange={(e) => props.setBingolog(e.target.value)}
      />
    </div>
  );
}
