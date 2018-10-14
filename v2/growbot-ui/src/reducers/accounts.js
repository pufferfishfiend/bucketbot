import { START_LOGIN, LOGIN_SUCCESS, LOGIN_ERROR } from './../actions/constants';
import { LOGIN_STATE_OK, LOGIN_STATE_ERROR } from './../constants';

const ACTION_COMMAND_MAP = {
  [START_LOGIN]: (state) => {
    return Object.assign({}, state, { loginInProgress: true });
  },
  [LOGIN_SUCCESS]: (state, { token }) => {
    return Object.assign({}, state, {
      loginInProgress: false,
      loggedIn: true,
      loginState: LOGIN_STATE_OK,
      authToken: token,
    });
  },
  [LOGIN_ERROR]: (state, action) => {
    return Object.assign({}, state, {
      loginInProgress: false,
      loggedIn: false,
      loginState: LOGIN_STATE_ERROR,
      loginMessage: action.message,
    });
  },
};

const accounts = (state, action) => {
  let result = Object.assign({}, state);
  const fn = ACTION_COMMAND_MAP[action.type];
  if (fn) {
    result = fn(state, action);
  }
  return result;
};

export default accounts;
