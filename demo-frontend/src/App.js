import logo from './logo.svg';
import './App.css';
import React, { useEffect, useState } from 'react';
import { API_URL } from './constants';
import axios from 'axios';

const App = () => {
  const [backendData, setBackendData] = useState(null);

  useEffect(() => {
    axios.get(`${API_URL}/test`)
      .then(response => {
        setBackendData(response.data);
      })
      .catch(error => {
        console.error('There was an error!', error);
      });
  }, []);
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
