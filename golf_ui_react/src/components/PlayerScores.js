import React, { useState } from "react";
import "./style.css";

const PlayerScores = (props) => {
  let numberOfHoles = parseInt(props.holes);
  let holeNumberArray = [...Array(numberOfHoles)].map((_, i) => i + 1);

  const [total, setTotal] = useState(0);
  const [name, setName] = useState("");
  const [state, setState] = useState({
    name: "",
    hole_1: 0,
    hole_2: 0,
    hole_3: 0,
    hole_4: 0,
    hole_5: 0,
    hole_6: 0,
    hole_7: 0,
    hole_8: 0,
    hole_9: 0,
    hole_10: 0,
    hole_11: 0,
    hole_12: 0,
    hole_13: 0,
    hole_14: 0,
    hole_15: 0,
    hole_16: 0,
    hole_17: 0,
    hole_18: 0,
  });

  // Calculate total score
  var totalScore = function () {
    let _total = Object.values(state)
      .slice(1, -1)
      .reduce((prev, next) => prev + next, 0);
    setTotal(_total);
  };

  const handleBlur = (e) => {
    console.log("handle blur");

    fetch(`http://localhost:3000/players/${props.playerID}`, {
      method: "PUT",
      // or 'PUT'
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(state),
    })
      .then((response) => response.json())
      .then((rdata) => {})
      .catch((error) => {});
  };

  const handleChange = (event) => {
    event.preventDefault();
    event.persist();
    var clone = state;
    clone[event.target.name] = parseInt(event.target.value);
    setState({ ...clone });
    const tempPlayersArray = [...props.players];
    tempPlayersArray[props.index].score = state;
    props.setPlayers(tempPlayersArray);

    console.log("STATE", state);
    totalScore();
  };

  const handleName = (event) => {
    event.preventDefault();
    event.persist();
    var clone = state;
    clone[event.target.name] = event.target.value;
    setName(event.target.value);
    setState({ ...clone });
    const tempPlayersArray = [...props.players];
    tempPlayersArray[props.index].name = name;
    props.setPlayers(tempPlayersArray);
  };

  return (
    <>
      <tr>
        <td>
          <input
            className='name'
            value={name}
            name='name'
            input='text'
            onBlur={handleBlur}
            onChange={handleName}></input>
          {/* <td>{props.playerName}</td> */}
        </td>
        {holeNumberArray.map((each, index) => (
          <>
            <td hole={"hole_" + each}>
              <input
                className='scoreInput'
                name={"hole_" + (index + 1)}
                input='text'
                onBlur={handleBlur}
                onChange={handleChange}></input>
            </td>
          </>
        ))}
        <td>{total}</td>
      </tr>
    </>
  );
};
export default PlayerScores;
