const express = require("express");
const router = express.Router();
const Pet = require("./Pet");

router.post("/pet/save", (req, res) => {
  var nome = req.body.nome;
  if (nome != undefined) {
    Pet.create({
      nome: nome,
      idade: idade,
      isVacinado: isVacinado,
      descricao: descricao,
      tipo: tipo,
    }).then(() => {
      res.json({ msg: "Pet registrada com sucesso", status: true });
    });
  } else {
    res.json({ msg: "Erro ao registrar Pet", status: false });
  }
});

router.get("/pet", (req, res) => {
  Pet.findAll().then((pet) => {
    res.json({ pet: pet });
  });
});

router.get("/pet/:id", (req, res) => {
  Pet.findByPk(req.params.id).then((pet) => {
    res.json({ pet: pet });
  });
});

router.get("/pets/check", (req, res) => {
  Pet.findAll({
    attributes: ["nome"],
    where: {
      nome: req.body.nome,
    },
  })
    .then((pet) => {
      res.json(pet);
    })
    .catch((err) => {
      console.log(err);
      res.json({ msg: "Erro! Pet não encontrada", detail: err });
    });
});

router.post("/pet/delete/:id", (req, res) => {
  var id = req.params.id;
  Pet.destroy({
    where: {
      id: id,
    },
  }).then(() => {
    res.json({ msg: "Pet deletada com sucesso", status: true });
  });
});

router.post("/pet/update/", (req, res) => {
  var id = req.body.id;
  var nome = req.body.nome;
  if (id != undefined) {
    if (!isNaN(id)) {
      Pet.update(
        { nome: nome,
          idade: idade,
          isVacinado: isVacinado,
          descricao: descricao,
          tipo: tipo, },
        {
          where: {
            id: id,
          },
        }
      ).then(() => {
        res.json({ msg: "Pet atualizada com sucesso", status: true });
      });
    } else {
      res.json({ msg: "ID não é um número", status: false });
    }
  } else {
    res.json({ msg: "ID indefinido", status: false });
  }
});

module.exports = router;
