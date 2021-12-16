import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Scorecard from "./Scorecard";

const NewRound = () => {
  const [numPlayers, setNumPlayers] = useState(1);
  const [courses, setCourses] = useState([]);
  const [course, setCourse] = useState([]);
  const [rdata, setRdata] = useState(null);

  async function createRound() {
    const data = {
      round: { course_id: course, num_players: numPlayers },
    };

    fetch("http://localhost:3000/rounds", {
      method: "POST",
      // or 'PUT'
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((stuff) => {
        console.log("Success:", stuff);
        setRdata(stuff);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  const handlePlayers = (event) => {
    setNumPlayers(event.target.value);
  };
  const handleCourse = (event) => {
    setCourse(event.target.value);
  };

  async function loadCourses() {
    const response = await fetch("http://localhost:3000/courses.json");
    const dataVal = await response.json();

    setCourses(dataVal);
  }

  useEffect(() => {
    loadCourses();
  }, []);

  return (
    <div>
      {!rdata && (
        <>
          <h1>Start a Round</h1>
          <br></br>
          <h2>Select a Course</h2>
          <select onChange={handleCourse}>
            {courses &&
              courses.map(({ id, name }) => (
                <option value={id} key={id}>
                  {name}
                </option>
              ))}
          </select>
          <h2>Number of Players</h2>
          <select onChange={handlePlayers}>
            <option value={1}>1</option>
            <option value={2}>2</option>
            <option value={3}>3</option>
            <option value={4}>4</option>
          </select>
          <button onClick={createRound}>Go to scorecard</button>
        </>
      )}
      <br />
      <br />
      {rdata && <Scorecard rdata={rdata} />}
    </div>
  );
};

export default NewRound;
