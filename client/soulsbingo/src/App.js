import Interpage from "./Interpage";
import { initSocket } from "./clientSocketUtils";

export default function App() {
  const socket = initSocket();

  return <Interpage socket={socket}/>;
}
