import axios from "axios";

export const fetchMods = async (category) => {
  try {
    const response = await axios.post("http://localhost:5175/api/mods", {
      category: category.category,
    });

    return await response.data.result;
  } catch (err) {
    return err;
  }
};
