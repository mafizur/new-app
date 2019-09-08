import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';

class GalleryTab extends Component {

  constructor(props) {
      super(props);
    }
    
  render() {
    return (
        <div className="single-image">
          <img src={this.props.obj.link} />
        </div>
    );
  }
}

export default GalleryTab;