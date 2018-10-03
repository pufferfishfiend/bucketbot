import { Component } from 'react';

class TextInput extends Component {
  render() {
    return (<div>
      <label>{this.props.label}</label>
      <input type="text" onChange={this.props.onChange}>{this.props.value}</input>
    </div >);
  }
};

export default TextInput;
