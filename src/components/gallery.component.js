import React, { Component } from 'react';
import axios from 'axios';
import GalleryTab from './GalleryTab';
import '../App.css';

export default class Index extends Component {

  constructor(props) {
      super(props);
      this.tabs = this.tabs.bind(this);
      this.tabRow = '';

      this.state = {
      	business: [],
      	results: []
      };
    }
    componentDidMount(){
      axios.get('http://mysoftheaven.com/lrb/getapi/v1/imagelist/tag-list')
        .then(response => {
          this.setState({ business: response.data.tagList });
          this.setState({ results: response.data.imageList });
        })
        .catch(function (error) {
          console.log(error);
        });
    }
    tabs(e) {
      const { title } = e.target.dataset;
        var value='lll';
        axios.get('http://mysoftheaven.com/lrb/getapi/v1/imagelist/tag-image-list?searchvalue='+title)
	      .then(({ data }) => {
	        this.setState({
	          results: data.imageList
	        })
	      })
    }

    imageRow(){
      return this.state.results.map(function(object, i){
          return <GalleryTab obj={object} key={i} />;
      });
    }

    render() {
      return (
        <div align="center" className="galleryTab">
          <div>
          	<button autofocus="true" data-title="All" onClick={this.tabs} className="btn btn-primary">All</button>
              { this.state.business.map((item, key) =>
        			    <button data-title={item.tags} onClick={this.tabs} className="btn btn-primary">{item.tags}</button>
        			)}
          </div>
          { this.imageRow() }
        </div>
      );
    }
  }