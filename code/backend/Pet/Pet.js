const Sequelize = require("sequelize");
const connection = require("../database/database");

const Pet = connection.define("pet", {
  nome: {
    type: Sequelize.STRING,
    allowNull: false,
  },
  idade: {
      type: Sequelize.STRING,
      allowNull: false,
  },
  isVacinado: {
      type: Sequelize.BOOLEAN,
      allowNull: false,
  },
  descricao: {
      type: Sequelize.BOOLEAN,
      allowNull: false,
  },
  tipo: {
      type: Sequelize.BOOLEAN,
      allowNull: false,
  },
});

Pet.sync({ force: false });

module.exports = Pet;
