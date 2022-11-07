const express = require("express");
const router = express.Router();
const User = require("./Usuario");

router.post("/user/save", (req, res) => {
  var nome = req.body.nome;
  var email = req.body.email;
  var senha = req.body.senha;
  var telefone = req.body.telefone;

  if (nome != undefined) {
    User.create({
      email: email,
      senha: senha,
      nome: nome,
      telefone: telefone,
    }).then(() => {
      res.json({ msg: "User registrado com sucesso", status: true });
    });
  } else {
    res.json({ msg: "Erro ao registrar usuario", status: false });
  }
});

router.post("/user/save", (req, res) => {
  var nome = req.body.nome;
  var email = req.body.email;
  var senha = req.body.senha;
  var telefone = req.body.telefone;

  if (nome != undefined) {
    User.create({
      email: email,
      senha: senha,
      nome: nome,
      telefone: telefone,
    }).then(() => {
      res.json({ msg: "User registrado com sucesso", status: true });
    });
  } else {
    res.json({ msg: "Erro ao registrar usuario", status: false });
  }
});

router.get("/user", (req, res) => {
  User.findAll().then((user) => {
    res.json({ user: user });
  });
});

router.get("/user/:id", (req, res) => {
  User.findByPk(req.params.id).then((user) => {
    res.json({ user: user });
  });
});

router.post("/user/update/", (req, res) => {
  var id = req.body.id;
  var nome = req.body.nome;
  var email = req.body.email;
  var senha = req.body.senha;
  var telefone = req.body.telefone;

  if (id != undefined) {
    if (!isNaN(id)) {
      User.update(
        {
          email: email,
          senha: senha,
          nome: nome,
          telefone: telefone,
        },
        {
          where: {
            id: id,
          },
        }
      ).then(() => {
        res.json({ msg: "User atualizada com sucesso", status: true });
      });
    } else {
      res.json({ msg: "ID não é um número", status: false });
    }
  } else {
    res.json({ msg: "ID indefinido", status: false });
  }
});

router.post("/users/check", (req, res) => {
  User.findAll({
    attributes: ["id", "email"],
    where: {
      email: req.body.email,
      senha: req.body.senha,
    },
  })
    .then((user) => {
      res.json(user);
    })
    .catch((err) => {
      console.log(err);
      res.json({ msg: "Erro usuario não encontrado", detail: err });
    });
});

router.post("/user/email", (req, res) => {
  var email = req.body.email;
  var password = req.body.senha;

  if (email != undefined && password != undefined) {
    User.findOne({ where: { email: email } }).then((user) => {
      if (user != undefined) {
        if (user.senha === password) {
          res.json({ msg: "email efetuado com sucesso", status: true, user });
        } else {
          res.json({ msg: "usuário inválido", status: false });
        }
      } else {
        res.json({ msg: "Situação não permite o email", status: false });
      }
    });
  } else {
    res.json({ msg: "campo vazio", stauts: false });
  }
});

router.post("/user/delete/:id", (req, res) => {
  var id = req.params.id;
  User.destroy({
    where: {
      id: id,
    },
  }).then(() => {
    res.json({ msg: "user deletado com sucesso", status: true });
  });
});

module.exports = router;
