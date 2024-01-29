import { useEffect, useState } from "react";
import fetchUserInfo from "../api/fetchUserInfo";
import "../styles/App.css";
import FunFact from "./FunFact";
import UserInfo from "./UserInfo";

const App = () => {
  const [userAgent, setUserAgent] = useState(null);
  const [identity, setIdentity] = useState(null);

  useEffect(() => {
    setUserAgent(navigator.userAgent);
  }, [identity]);

  const handleClick = async () => {
    const userInfo = await fetchUserInfo(userAgent);
    setIdentity(userInfo);
  };

  return (
    <div className="app-container">
      <main className="app-content">
        <header className="centered">
          <h1 className="header-title">My UserAgent Info</h1>
            {identity ? (
              <button onClick={() => setIdentity(null)}>Reset</button>
            ) : (
              <button onClick={handleClick}>Get UserAgent</button>
            )}
        </header>
        <div className="content-container">
          <h3 className="agent-info centered">{navigator.userAgent}</h3>
          {identity ? <UserInfo identity={identity} /> : <h5 className="no-identity centered">No Identity</h5>}
        </div>
        <FunFact />
      </main>
    </div>
  );
};

export default App;
