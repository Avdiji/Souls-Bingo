import io from "socket.io-client";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Layout from "./components/layout/Layout";
import LandingPage from "./pages/landingPage/LandingPage";
import { useState } from "react";
import BingoPage from "./pages/bingoPage/BingoPage";


export default function Interpage(props){
    const [roomID, setRoomID] = useState('');

    return (
      <Layout>
        <Router>
          <Routes>
            <Route path="/" element={<LandingPage socket={props.socket} roomID={roomID} setRoomID={setRoomID}/>} />
            <Route path="/bingo" element={<BingoPage socket={props.socket} roomID={roomID}/>} />
          </Routes>
        </Router>
      </Layout>
    );
}