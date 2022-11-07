const Sequelize = require("sequelize");

const connection = new Sequelize({
  database: "aDotPet",
  username: "postgres",
  password: "12345",
  host: "localhost",
  port: 5432,
  dialect: "postgres",
  dialectOptions: {},
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
});
module.exports = connection;
