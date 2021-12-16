import { Link } from "react-router-dom";
import React, { useState, useEffect } from "react";
import PlayerScores from "./PlayerScores";
import "./style.css";

function Scorecard(props) {
  const [players, setPlayers] = useState([]);
  const [roundId, setRoundId] = useState();

  useEffect(() => {
    const playersArr = props.rdata.players.map((player) => {
      return {
        id: player.id,
        score: {
          hole_1: player.hole_1,
          hole_2: player.hole_2,
          hole_3: player.hole_3,
          hole_4: player.hole_4,
          hole_5: player.hole_5,
          hole_6: player.hole_6,
          hole_7: player.hole_7,
          hole_8: player.hole_8,
          hole_9: player.hole_9,
          hole_10: player.hole_10,
          hole_11: player.hole_11,
          hole_12: player.hole_12,
          hole_13: player.hole_13,
          hole_14: player.hole_14,
          hole_15: player.hole_15,
          hole_16: player.hole_16,
          hole_17: player.hole_17,
          hole_18: player.hole_18,
        },
      };
    });
    setPlayers(playersArr);
    setRoundId(props.rdata.id);
  }, [props.rdata]);

  let numberOfHoles = 18;
  let holeNumberArray = [...Array(numberOfHoles)].map((_, i) => i + 1);

  return (
    <>
      <div className='table-container column is-centered has-text-centered'>
        <h1>Scorecard</h1>
        <table className='is-centered scoreCardCss table is-bordered is-narrow is-hoverable'>
          {props.rdata && (
            <>
              <caption>
                Course Name: <strong>{props.rdata.course.name}</strong> |
                Location:
                <strong>
                  {props.rdata.course.city}, {props.rdata.course.state}
                </strong>
              </caption>
              {props.rdata.tees &&
                props.rdata.tees.map(
                  ({
                    id,
                    name,
                    hole_1,
                    hole_2,
                    hole_3,
                    hole_4,
                    hole_5,
                    hole_6,
                    hole_7,
                    hole_8,
                    hole_9,
                    out,
                    hole_10,
                    hole_11,
                    hole_12,
                    hole_13,
                    hole_14,
                    hole_15,
                    hole_16,
                    hole_17,
                    hole_18,
                    tot,
                  }) => (
                    <tr key={id}>
                      <td className='name'>{name} </td> <td>{hole_1}</td>
                      <td>{hole_2}</td> <td>{hole_3}</td> <td>{hole_4}</td>
                      <td>{hole_5}</td>
                      <td>{hole_6}</td> <td>{hole_7}</td> <td>{hole_8}</td>
                      <td>{hole_9}</td>
                      <td>{hole_10}</td> <td>{hole_11}</td>
                      <td>{hole_12}</td>
                      <td>{hole_13}</td>
                      <td>{hole_14}</td> <td>{hole_15}</td> <td>{hole_16}</td>
                      <td>{hole_17}</td> <td>{hole_18}</td> <td>{tot}</td>
                    </tr>
                  )
                )}
              <thead>
                <tr className='tableHeader'>
                  <th></th>
                  {holeNumberArray.map((each, index) => (
                    <td hole={"hole" + each} key={"hole" + each}>
                      {each}
                    </td>
                  ))}
                  <td>Total</td>
                </tr>
              </thead>
            </>
          )}
          <tbody>
            {props.rdata.players.map((player, index) => {
              return (
                <PlayerScores
                  playerName={player.name}
                  player={"player" + (index + 1)}
                  playerID={player.id}
                  roundId={props.rdata.id}
                  holes={18}
                  setPlayers={setPlayers}
                  index={index}
                  players={players}
                />
              );
            })}
          </tbody>
        </table>
      </div>
    </>
  );
}

export default Scorecard;
