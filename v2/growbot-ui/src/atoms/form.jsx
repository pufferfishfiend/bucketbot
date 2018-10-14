import React from 'react';

const Form = ({ buttonText, children, onSubmit }) => {
  return (
    <div>
      <form onSubmit={onSubmit}>
        {children}
        <button type="submit">{buttonText}</button>
      </form>
    </div>
  );
};

export default Form;
