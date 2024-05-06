const Form = ({ handleSubmit, handleChange, value }) => {
  return (
    <form onSubmit={handleSubmit}>
      <div className="select">
        <select
          name="category"
          className="select-category"
          value={value}
          onChange={handleChange}
          multiple
        >
          <option value="1">Scripts Tools</option>
          <option value="3">Cosmetics</option>
          <option value="2">EUP</option>
          <option value="4">LSPDFR</option>
          <option value="5">Vechicals</option>
        </select>
      </div>
      <div className="submit">
        <input type="submit" value="Set Category" className="submit-btn" />
      </div>
    </form>
  );
};

export default Form;
