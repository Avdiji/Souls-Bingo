import Interpage from "./Interpage";
import { initSocket } from "./utils/socketUtils";

export default function App() {
  const socket = initSocket();

  return <Interpage socket={socket}/>;
}
