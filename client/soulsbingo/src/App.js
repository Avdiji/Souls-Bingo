import Interpage from "./Interpage";
import io from "socket.io-client";

export default function App() {
  const socket = io.connect("http://localhost:3001");

  return <Interpage socket={socket}/>;
}
