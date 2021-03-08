import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otakehouse/componentes/my_bottom_navbar.dart';
import 'package:otakehouse/screens/componentes/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar() ,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation:0,
       leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),
    );
  }
}

