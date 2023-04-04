import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          {/* Edit <code>src/App.js</code> and save to reload. */}
          Successfully Deployed <code>A React application</code> to Netlify with
          CircleCI
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
        <button
          onClick={() => {
            axios
              .get("https://google.com")
              .then((data) => {
                console.log(data);
              })
              .catch((err) => console.log(err));
          }}
        >
          Request Data
        </button>
      </header>
    </div>
  );
}

export default App;
