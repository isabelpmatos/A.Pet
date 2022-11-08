import 'package:flutter/material.dart';
import 'package:adotpet/components/orgs_drawer.dart';
import 'package:adotpet/components/orgs_stores_card.dart';
import 'package:adotpet/core/app_colors.dart';
import 'package:adotpet/models/producer_model.dart';
import 'package:adotpet/repository/data.dart';
import 'package:adotpet/detalhesAnimais.dart';

void main() => runApp(MyAppPets());

class MyAppPets extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: OrgsDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Animais disponíveis',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkGrey
                    ),
                  ),
                  IconButton(
                    color: Colors.transparent,
                    icon: Icon(Icons.menu, color: AppColors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyAppPets()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Lista:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(
                  future: _generateProducerList(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              )
              ],
            ),
          ),
      ),
    );
  }

  Future _generateProducerList(BuildContext context) async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final producers = data["producers"];

    for(final producer in producers.keys) {

      final prod = Producer.fromJson(producers[producer]);

      children.add(OrgsStoresCard(
        action: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detalhesAnimais(producer: prod)),
        ),
        img: prod.logo,
        distance: prod.distance,
        title: prod.name,
      ));

      children.add(SizedBox(height: 10));
    }

    return children;
  }
}