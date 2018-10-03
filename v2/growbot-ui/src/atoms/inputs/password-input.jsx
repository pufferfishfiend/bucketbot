import { Component } from 'react';

class PasswordInput extends Component {
  render() {
    return (<div>
      <label>{this.props.label}</label>
      <input type="password" onChange={this.props.onChange}>{this.props.value}</input>
    </div >);
  }
};

export default PasswordInput;
