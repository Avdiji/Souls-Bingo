import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Layout from "./components/layout/Layout";
import LandingPage from "./pages/landingPage/LandingPage";
import { useEffect, useState } from "react";
import BingoPage from "./pages/bingoPage/BingoPage";
import Impressum from "./pages/impressum/Impressum";

export default function Interpage(props) {
  const [roomName, setRoomName] = useState("");
  const [activeGameID, setActiveGameID] = useState(1);
  const [bingolog, setBingolog] = useState("");
  const [challenges, setChallenges] = useState([]);

  useEffect(() => {
    props.socket.on("receive_challenges", (backendChallenges) => {
      setChallenges(backendChallenges);
    });
    props.socket.on("receive_gameid", (gameid) => {
      setActiveGameID(gameid);
    });
    props.socket.on("receive_log", (message) => {
      setBingolog(bingolog + "\n" + message);
      console.log(message);
    });
  }, [props.socket, bingolog]);

  return (
    <Router>
      <Layout>
        <Routes>
          <Route
            path="/"
            element={
              <LandingPage socket={props.socket} setRoomName={setRoomName} />
            }
          />
          <Route
            path="/bingo"
            element={
              <BingoPage
                socket={props.socket}
                challenges={challenges}
                roomName={roomName}
                activeGameID={activeGameID}
                bingolog={bingolog}
                setBingolog={setBingolog}
              />
            }
          />
          <Route path="/impressum" element={<Impressum />} />
        </Routes>
      </Layout>
    </Router>
  );
}
