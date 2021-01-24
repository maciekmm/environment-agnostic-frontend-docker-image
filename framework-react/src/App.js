import './App.css';

function App() {
  const apiHost = window.env.API_HOST

  return (
    <div className="App">
      <p>
        API Host: {apiHost}
      </p>
    </div>
  );
}

export default App;
