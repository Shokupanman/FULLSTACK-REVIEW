import React from 'react';
import './App.css';
import routes from './routes'
import Header from './Components/Header'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Header />
        {routes}
      </header>
    </div>
  );
}

export default App;
