import "./assets/styles/Mods.css";
import { useEffect, useState } from "react";
import { fetchMods } from "../../utils/fetchMods";
import Form from "./components/Form/Form";
import { Link } from "react-router-dom";

const Mods = () => {
  const [data, setData] = useState([]);
  const [formData, setFormData] = useState({
    category: [] || [1],
  });

  const handleSubmit = (e) => {
    e.preventDefault();

    fetchMods(formData).then((result) => {
      setData(result);
    });
  };
  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  return (
    <div className="Mods">
      <h1>Mods List</h1>
      <h4>Select one category to check mods</h4>
      <Form
        handleChange={handleChange}
        handleSubmit={handleSubmit}
        value={formData.category}
      />
      <div className="datas">
        <table className="mods">
          {data.map((element, index) => {
            return (
              <tr className="mod">
                <td>
                  <Link to={element.modLink}>{element.modName}</Link>
                </td>
              </tr>
            );
          })}
        </table>
      </div>
    </div>
  );
};

export default Mods;
