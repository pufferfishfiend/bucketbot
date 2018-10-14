import React, { Component } from 'react';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import './App.css';
import reducers from './reducers';
import Login from './containers/login';
import Dashboard from './containers/dashboard';

const persistedState = localStorage.getItem('reduxState') ? JSON.parse(localStorage.getItem('reduxState')) : {}
const store = createStore(reducers, persistedState);
store.subscribe(() => {
  localStorage.setItem('reduxState', JSON.stringify(store.getState()));
});

const App = () => (
  <Provider store={store}>
    <Router>
      <div>
        <Route path="/" component={Login} />
        <Route path="/dashboard" component={Dashboard} />
      </div>
    </Router>
  </Provider>
);

export default App;
