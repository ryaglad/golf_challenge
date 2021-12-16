import logo from "./logo.svg";
import "./App.css";
import NewRound from "./components/NewRound";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Scorecard from "./components/Scorecard";

function App() {
  return (
    <div className='App'>
      <Router>
        <Routes>
          <Route path='/' element={<NewRound />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
