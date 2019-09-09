// TableRow.js

import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';

class TableRow extends Component {

  constructor(props) {
        super(props);
        this.delete = this.delete.bind(this);
    }
    delete() {
      const body = {
        id: this.props.obj.id
      };

      axios({
        method: 'post',
        url: 'http://mysoftheaven.com/lrb/api/v1/image/delete-image',
        data: body
      })
      .then(function (response) {
          console.log('Deleted');
          alert('Image delete successfuly');
      })
      .catch(function (error) {
          console.log(error);
      });
    }
  render() {
    return (
        <tr>
          <td>
            {this.props.obj.title}
          </td>
          <td>
            {this.props.obj.link}
          </td>
          <td>
            {this.props.obj.tags}
          </td>
          <td>
            <Link to={"/edit/"+this.props.obj.id} className="btn btn-primary">Edit</Link>
          </td>
          <td>
            <button onClick={this.delete} className="btn btn-danger">Delete</button>
          </td>
        </tr>
    );
  }
}

export default TableRow;