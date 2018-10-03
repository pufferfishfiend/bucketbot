import { Component } from 'react';
import Form from '../atoms/form';
import TextInput from '../atoms/inputs/text-input';
import PasswordInput from '../atoms/inputs/password-input';

class Login extends Component {
  constructor(props) {
    super(props);
    this.onEmailChange = onEmailChange.bind(this);
    this.onPasswordChange = this.onPasswordChange.bind(this);
    this.onSubmit = onSubmit.bind(this);
  };

  onEmailChange(event) {
    const email = event.target.value;
    this.setState({ email });
  }

  onPasswordChange(event) {
    const password = event.target.value;
    this.setState({ password });
  }

  onSubmit() {
    const { email, password } = this.state;
  };

  render() {
    return (<div>
      <Form onSubmit={this.onSubmit} buttonText="Login">
        <TextInput label="Email" onChange={this.onEmailChange} />
        <PasswordInput label="Password" onChange={this.onPasswordChange} />
      </Form>
    </div>)
  }
};

export default Login;