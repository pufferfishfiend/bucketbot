import { Component } from 'react';

class Form extends Component {
  render() {
    return (<div>
      <form onSubmit={this.props.onSubmit}>
        {this.props.children}
        <button>{this.props.buttonText}</button>
      </form>
    </div>)
  }
};

export default Form;