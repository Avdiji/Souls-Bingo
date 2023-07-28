import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Layout from "./components/layout/Layout";
import LandingPage from "./pages/landingPage/LandingPage";
import { useEffect, useState } from "react";
import BingoPage from "./pages/bingoPage/BingoPage";


export default function Interpage(props) {
  const [roomName, setRoomName] = useState('');
  const [roomPW, setRoomPW] = useState('');
  const [challenges, setChallenges] = useState([])

  useEffect(() => {
    props.socket.on("receive_challenges", (backendChallenges) => { setChallenges(backendChallenges); });
  }, [props.socket]);


  return (
    <Layout>
      <Router>
        <Routes>
          <Route path="/" element={<LandingPage socket={props.socket} setRoomName={setRoomName} setRoomPW={setRoomPW} />} />
          <Route path="/bingo" element={<BingoPage socket={props.socket} challenges={challenges} roomName={roomName} />} />
        </Routes>
      </Router>
    </Layout>
  );
}