import { Component } from 'react';

class BaseMessage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: this.prepareMessages(),
    }
  }

  prepareMessages() {
    const { message, messages } = this.props;
    const finalMessages = message
      ? (messages || []).concat(message)
      : messages || [];
    if (finalMessages.length === 0) {
      // oops - no messages!
      throw Error('either message or messages prop needs a value');
    }
    return finalMessages;
  }

  renderMessages() {
    const { messages } = this.state;
    if (messages.length === 1) {
      return <p>{messages[0]}</p>;
    }
    return (<ul>
      {messages.map(message => {
        return <li>{message}</li>
      })}
    </ul>)
  }

  render() {
    const klass = `message-${this.props.messageClass}`
    return (<div>
      <div class={`message ${klass}`}>
      </div>
    </div >)
  }
};

export default BaseMessage;