import React, { useEffect, useState } from "react";
import '../styles/FunFact.css';

const FunFact = () => {
  const [fact, setFact] = useState(null);

  useEffect(() => {
    fetchRandomFact();
  }, []);

  const fetchRandomFact = async () => {
    try {
      const response = await fetch("https://uselessfacts.jsph.pl/random.json?language=en");
      if (response.ok) {
        const data = await response.json();
        setFact(data.text);
      } else {
        throw new Error("Failed to fetch fact");
      }
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div className="fun-fact-container">
      {fact ? (
        <div>
          <p className="fun-fact-text">{fact}</p>
          <button onClick={fetchRandomFact} className="fun-fact-button">Get Another Fun Fact</button>
        </div>
      ) : (
        <button onClick={fetchRandomFact} className="fun-fact-button">Get a Fun Fact</button>
      )}
    </div>
  );
};

export default FunFact;
