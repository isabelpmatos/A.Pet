import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                color: Colors.white,
                child: Image.asset(
                  'assets/images/A.jpg',
                  height: 300,
                )),

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'Esqueci minha senha',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
                child: ElevatedButton(
                  child: const Text('LOGIN'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Não possui conta?'),
                TextButton(
                  child: const Text(
                    'Cadastre-se',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ));
  }
}