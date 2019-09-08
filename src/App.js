// App.js

import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import Logo from './logo.png';
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';

import Create from './components/create.component';
import Edit from './components/edit.component';
import Index from './components/index.component';
import Gallery from './components/gallery.component';
import './App.css';

class App extends Component {
  render() {
    return (
      <Router>
        <div className="container">
          <nav className="navbar navbar-expand-lg navbar-light bg-light">
            <Link to={'/'} className="navbar-brand App-logo"><img src={Logo} /></Link>
            <div className="collapse navbar-collapse" id="navbarSupportedContent">
              <ul className="navbar-nav mr-auto">
                <li className="nav-item">
                  <Link to={'/index'} className="nav-link">Image List</Link>
                </li>

                <li className="nav-item">
                  <Link to={'/create'} className="nav-link">Create Image</Link>
                </li>
                
                <li className="nav-item">
                  <Link to={'/gallery'} className="nav-link">Gallery</Link>
                </li>
              </ul>
            </div>
          </nav> <br/>
          <h1 align="center">Welcome to Ergo Ventures Pvt. Ltd.</h1>
          <h6 align="center">Interview Tasks : Simple React CRUD Operation</h6> <br/>
          <Switch>
              <Route exact path='/create' component={ Create } />
              <Route path='/edit/:id' component={ Edit } />
              <Route path='/index' component={ Index } />
              <Route path='/gallery' component={ Gallery } />
          </Switch>
          <div className="footer">
              Developed By Md. Mafizur Rahman
          </div>
        </div>
      </Router>
    );
  }
}

export default App;