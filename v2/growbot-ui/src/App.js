import React, { Component } from 'react';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import './App.css';
import ListsContainer from './components/ListsContainer';

const store = createStore(() => [], {}, applyMiddleware);

class App extends Component {
  render() {
    return (
			<Provider store={store}>
				<div className="App">
					<header className="App-header">
						<h1 className="App-title">Welcome to growbot-ui</h1>
					</header>
					<ListsContainer />
				</div>
			</Provider>
    );
  }
}

export default App;
