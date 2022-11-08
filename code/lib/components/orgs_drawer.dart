import 'package:flutter/material.dart';
import 'package:adotpet/core/app_colors.dart';
import 'package:adotpet/telaPets.dart';

class OrgsDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MyAppPets()
    );
  }
}