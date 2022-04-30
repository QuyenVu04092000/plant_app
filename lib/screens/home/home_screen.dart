import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import '../../components/my_bottom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar()
    );
  }
  AppBar buildAppBar (){
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: (){
      },),
    );
  }
}