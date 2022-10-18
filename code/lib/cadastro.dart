import 'package:flutter/material.dart';
import 'package:adotpet/main.dart';

void main() => runApp(const MyAppCadastro());

class MyAppCadastro extends StatelessWidget {
  const MyAppCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SignUp(),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/A.jpg',
                  height: 250,
                )),

            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child:  TextFormField(
                decoration: const InputDecoration(
                    label: Text('Nome'), hintText: ''),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Telefone'), hintText: ''),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Email'), hintText: 'email@email.com'),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Confirme a senha',
                ),
              ),
            ),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
                color: Colors.white,
                child: ElevatedButton(
                  child: const Text('CADASTRAR'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyAppLogin()),
                    );
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Já possui conta?'),
                TextButton(
                  child: const Text(
                    'Fazer login',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyAppLogin()),
                    );
                  },
                )
              ],
            ),
          ],
        ));
  }
}