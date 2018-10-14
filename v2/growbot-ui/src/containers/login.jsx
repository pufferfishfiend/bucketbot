import { connect } from 'react-redux';
import axios from 'axios';
import { startLogin, loginSuccess, loginError } from './../actions/login';
import Login from './../components/login';

const mapStateToProps = (state, ownProps) => {
  return {
    authToken: state.accounts.authToken,
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    onSubmit: (event) => {
      event.preventDefault();
      const { email, password } = event.target.elements;
      const emailVal = email.value;
      const passwordVal = password.value;
      dispatch(startLogin());
      axios.post('http://localhost:3000/api/v1/authenticate', {
        email: emailVal,
        password: passwordVal,
      }).then(response => {
        const token = response.data.auth_token;
        dispatch(loginSuccess(token));
      }).catch(error => {
        console.log('login error:', error);
        dispatch(loginError());
      });
    },
  }
};

const loginContainer = connect(
  mapStateToProps,
  mapDispatchToProps,
)(Login);

export default loginContainer;
