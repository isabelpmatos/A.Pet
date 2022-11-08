import 'package:flutter/material.dart';
import 'package:adotpet/components/orgs_packages_card.dart';
import 'package:adotpet/core/app_colors.dart';
import 'package:adotpet/core/app_images.dart';
import 'package:adotpet/models/package_model.dart';
import 'package:adotpet/models/producer_model.dart';
import 'package:adotpet/package_detalhesAnimais.dart';

class DetalhesAnimais extends StatelessWidget {

  final Producer producer;
  DetalhesAnimais({
    required this.producer
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Informações do animal',
          style: TextStyle(
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.bg_producer,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 150, 20, 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(producer.logo),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: Text(
                          producer.name,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                    ),
                    Text(
                      '${producer.distance} km',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              producer.description,
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 18
              )
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Cestas',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: ListView(
                children: _generatePackageList(context, producer.packages)
              ),
            )
          ),*/
        ],
      ),
    );
  }

 /* List _generatePackageList(BuildContext context, List packages) {
    List<Widget> children = [];
    for(final package in packages) {
      final pack = Package.fromJson(package);

      children.add(InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PackageDetalhesAnimais(
            package: pack,
            producer: producer,
          )),
        ),
        child: OrgsPackagesCard(
          title: pack.title,
          price: pack.price,
          description: pack.description,
        ),
      ));
    }

    return children;
  }*/
}