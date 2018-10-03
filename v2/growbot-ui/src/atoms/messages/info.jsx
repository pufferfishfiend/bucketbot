import { Component } from 'react';
import BaseMessage from './base-message';

class Info extends Component {
  render() {
    const { messages } = this.props;
    return <BaseMessage
      messageClass="info"
      messages={messages}
    />
  }
}

export default Info;
