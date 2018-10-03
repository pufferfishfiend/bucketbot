import { Component } from 'react';
import BaseMessage from './base-message';

class Warn extends Component {
  render() {
    const { messages } = this.props;
    return <BaseMessage
      messageClass="warn"
      messages={messages}
    />
  }
};

export default Warn;
