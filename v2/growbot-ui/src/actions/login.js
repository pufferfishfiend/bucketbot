import { START_LOGIN, LOGIN_SUCCESS, LOGIN_ERROR } from './constants';

export function startLogin() {
  return { type: START_LOGIN };
};

export function loginSuccess(token) {
  return { type: LOGIN_SUCCESS, token };
};

export function loginError(message) {
  return { type: LOGIN_ERROR, message };
};
