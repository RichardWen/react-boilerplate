const configureEnzyme = require("enzyme").configure;
const EnzymeAdapter = require("enzyme-adapter-react-16");

configureEnzyme({ adapter: new EnzymeAdapter() });
