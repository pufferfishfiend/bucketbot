import React from 'react';
import { Redirect } from 'react-router-dom';
import Form from '../atoms/form';
import TextInput from '../atoms/inputs/text-input';
import PasswordInput from '../atoms/inputs/password-input';

export default (props) => {
  const { onSubmit, authToken } = props;
  if (authToken) {
    console.log('redirecting to dashboard!');
    return <Redirect to='/dashboard' />
  }
  return (
    <div>
      <Form onSubmit={onSubmit} buttonText="Login">
        <TextInput name="email" label="Email" />
        <PasswordInput name="password" label="Password" />
      </Form>
    </div>
  );
};
