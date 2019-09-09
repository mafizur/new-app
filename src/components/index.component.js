// index.component.js

import React, { Component } from 'react';
import axios from 'axios';
import TableRow from './TableRow';

export default class Index extends Component {

  constructor(props) {
      super(props);
      this.state = {data: []};
    }
    componentDidMount(){
      axios.get('http://mysoftheaven.com/lrb/api/v1/imagelist/image-list')
        .then(response => {
          this.setState({ data: response.data.imageList });
        })
        .catch(function (error) {
          console.log(error);
        })
    }
    tabRow(){
      return this.state.data.map(function(object, i){
          return <TableRow obj={object} key={i} />;
      });
    }

    render() {
      return (
        <div>
          <h3 align="center">Image List</h3>
          <table className="table table-striped" style={{ marginTop: 20 }}>
            <thead>
              <tr>
                <th>Image Title</th>
                <th>Image Link</th>
                <th>Image Tags</th>
                <th colSpan="2">Action</th>
              </tr>
            </thead>
            <tbody>
              { this.tabRow() }
            </tbody>
          </table>
        </div>
      );
    }
  }