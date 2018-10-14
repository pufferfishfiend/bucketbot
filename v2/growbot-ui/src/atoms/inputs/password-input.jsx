import React from 'react';

const PasswordInput = ({ label, value, name, onChange }) => {
  return (
    <div>
      <label htmlFor={name}>{label}</label>
      <input
        type="password"
        name={name}
        onChange={onChange}
        value={value}
      />
    </div>
  );
};

export default PasswordInput;
