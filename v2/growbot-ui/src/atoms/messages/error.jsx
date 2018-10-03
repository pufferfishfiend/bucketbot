import { Component } from 'react';
import BaseMessage from './base-message';

class Error extends Component {
  render() {
    const { messages } = this.props;
    return <BaseMessage
      messageClass="error"
      messages={messages}
    />
  }
};

export default Error;
