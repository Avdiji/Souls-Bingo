import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import Layout from "./components/layout/Layout";
import LandingPage from "./pages/landingPage/LandingPage";

export default function App() {
  return (
    <Layout>
      <Router>
        <Routes>
          <Route path="/" element={<LandingPage />} />
        </Routes>
      </Router>
    </Layout>
  );
}
