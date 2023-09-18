import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/screens/cart_screen.dart';
import 'package:plant_app/screens/favorate_screen.dart';
import 'package:plant_app/screens/home_screen.dart';
import 'package:plant_app/screens/profile_screen.dart';
import 'package:plant_app/screens/scan_page.dart';

import '../constrants.dart';
import '../models/plants.dart';
import 'login_screen.dart';




class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Plant> favorites = [];
  List<Plant> myCart = [];

  int _bottomNavIndex = 0;
  List<Widget>   _widgetOptions() {

    return [
    HomeScreen(),
    FavorateScreen( favoritedPlants: favorites,),
    CartPage( addedToCartPlants: myCart,),
    ProfilePage()
    ];
  }

  List<IconData> iconList = [

    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person
  ];

  List<String> titleList = [

    "Home",
    "Favorite",
    "Cart",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,

      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titleList[_bottomNavIndex], style: TextStyle(
             // color: Constrants.blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 24
            ),),

            Icon(Icons.notifications,
              // color: Constrants.blackColor,
              size: 30,)
          ],
        ),

        elevation: 1,
      ),

      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: (){
          Navigator.push(context,
              PageTransition(
                child:ScanScreen(),
          type:PageTransitionType.bottomToTop,
              )  );
        },

        child: Image.asset('lib/assets/code-scan-two.png',height: 30,),
        backgroundColor: Constrants.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(

        splashColor: Constrants.primaryColor,
        activeColor: Constrants.primaryColor,
        inactiveColor: Colors.black.withOpacity(.5),
        icons:iconList,iconSize: 40,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index){

          setState(() {

            _bottomNavIndex = index;
            final List<Plant> favoritedPlants = Plant.getFavoritedPlants();
            final List<Plant> addedtoCartPlants = Plant.addedToCartPlants();
            favorites = favoritedPlants;
            myCart =addedtoCartPlants.toSet().toList();
          });
        },
      ),
    );
  }
}
