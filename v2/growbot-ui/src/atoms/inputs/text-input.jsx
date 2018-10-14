import React from 'react';

const TextInput = ({ label, value, name, onChange }) => {
  return (
    <div>
      <label htmlFor={name}>{label}</label>
      <input
        type="text"
        name={name}
        onChange={onChange}
        value={value}
      />
    </div>
  );
};

export default TextInput;
