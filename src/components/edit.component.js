// edit.component.js

import React, { Component } from 'react';
import axios from 'axios';
import Suggestions from './Suggestions'

export default class Edit extends Component {
  constructor(props) {
    super(props);
    this.onChangeTitle = this.onChangeTitle.bind(this);
    this.onChangeLink = this.onChangeLink.bind(this);
    this.onChangeTags = this.onChangeTags.bind(this);
    this.onSubmit = this.onSubmit.bind(this);

    this.state = {
      title: '',
      link: '',
      tags:'',
      query: '',
      results: [],
    }
  }

  componentDidMount() {
    axios.get('http://mysoftheaven.com/lrb/api/v1/imagelist/single-image-list?id='+this.props.match.params.id)
        .then(response => {
            this.setState({ 
              title: response.data.imageList.title, 
              link: response.data.imageList.link,
              tags: response.data.imageList.tags });
        })
        .catch(function (error) {
            console.log(error);
        })
  }

  getInfo = () => {
    axios.get('http://mysoftheaven.com/lrb/api/v1/imagelist/query?searchvalue='+this.state.query)
      .then(({ data }) => {
        this.setState({
          results: data.tagList
        })
      })
  }

  onChangeTitle = (e) => {
    this.setState({
      title: e.target.value,
      query: this.search.value
    }, () => {
        this.getInfo()
    })
  }

  onChangeLink(e) {
    this.setState({
      link: e.target.value
    })  
  }
  onChangeTags(e) {
    this.setState({
      tags: e.target.value
    })
  }

  onSubmit(e) {
    e.preventDefault();
    const obj = {
      title: this.state.title,
      link: this.state.link,
      tags: this.state.tags,
      id: this.props.match.params.id
    };
    axios({
      method: 'post',
      url: 'http://mysoftheaven.com/lrb/api/v1/image/update-image',
      data: obj
    })
    .then(function (response) {
        console.log(response);
        alert('Image update successfuly');
    })
    .catch(function (error) {
        console.log(error);
    });
    
    this.props.history.push('/index');
  }
 
  render() {
    return (
        <div style={{ marginTop: 10 }}>
            <h3 align="center">Update Image </h3>
            <form onSubmit={this.onSubmit}>
                <div className="form-group">
                    <label>Image Title:  </label>
                    <input 
                      type="text" 
                      className="form-control" 
                      value={this.state.title}
                      ref={input => this.search = input}
                      onChange={this.onChangeTitle}
                      />
                </div>
                <Suggestions results={this.state.results} />
                <div className="form-group">
                    <label>Image link: </label>
                    <input type="text" 
                      className="form-control"
                      value={this.state.link}
                      onChange={this.onChangeLink}
                      />
                </div>
                <div className="form-group">
                    <label>Image Tags: </label>
                    <input type="text" 
                      className="form-control"
                      value={this.state.tags}
                      onChange={this.onChangeTags}
                      />
                </div>
                <div className="form-group">
                    <input type="submit" 
                      value="Update" 
                      className="btn btn-primary"/>
                </div>
            </form>
        </div>
    )
  }
}