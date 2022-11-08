import 'package:flutter/material.dart';
import 'package:adotpet/main.dart';

void main() => runApp(const CadastroPets());

class CadastroPets extends StatelessWidget {
  const CadastroPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Pets(),
      ),
    );
  }
}

class Pets extends StatefulWidget {
  const Pets({Key? key}) : super(key: key);
}

class _CadastroState extends State<Pets> {


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                color: Colors.white,
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
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    label: Text('Tipo'), hintText: ''),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    label: Text('Idade'), hintText: ''),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    label: Text('Vacinação'), hintText: ''),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              color: Colors.white,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    label: Text('Descricao'), hintText: ''),
              ),
            ),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
                color: Colors.white,
                child: ElevatedButton(
                  child: const Text('Salvar'),
                  onPressed: () {

                  },
                )
            ),
          ],
        ));
  }
}