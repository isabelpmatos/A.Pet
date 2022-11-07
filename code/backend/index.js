const express = require("express");
const bodyparser = require("body-parser");
const app = express();
const connection = require("./database/database");
const cors = require("cors");
const usuarioController = require("./Usuario/UsuarioController");
const petController = require("./Pet/PetController");

app.use((req, res, next) => {
  //Qual site tem permissão de realizar a conexão, no exemplo abaixo está o "*" indicando que qualquer site pode fazer a conexão
  res.header("Access-Control-Allow-Origin", "*");
  //Quais são os métodos que a conexão pode realizar na API
  res.header("Access-Control-Allow-Methods", "GET,PUT,POST,DELETE");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, Content-Type, X-Auth-Token"
  );
  app.use(cors());
  app.use(express.json());
  next();
});
app.use(bodyparser.urlencoded({ extended: false }));
app.use(bodyparser.json());

connection
  .authenticate()
  .then(() => {
    console.log("Conexão feita com sucesso!!");
  })
  .catch((error) => {
    console.log(error);
  });

app.use("/", usuarioController);
app.use("/", petController);

app.listen(process.env.PORT || 8080, () => {
  console.log("Servidor rodando");
});
