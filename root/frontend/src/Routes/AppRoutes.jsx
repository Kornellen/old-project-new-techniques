import { BrowserRouter, Routes, Route } from "react-router-dom";
import Mods from "../Pages/Mods/Mods";
import About from "../Pages/About/About";

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Mods />}>
          <Route path="mods" element={<Mods />} />
          <Route path="about" element={<About />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
};

export default AppRoutes;
