import axios from "axios";

export const fetchMods = async (category) => {
  try {
    console.log(category.category);

    const response = await axios.post("http://localhost:5175/api/mods", {
      category: category.category,
    });

    console.log(response.data.result);

    return await response.data.result;
  } catch (err) {
    return err;
  }
};
