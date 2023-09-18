import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app/screens/plant_widget.dart';

import '../models/plants.dart';



class FavorateScreen extends StatefulWidget{

final List<Plant> favoritedPlants;
   FavorateScreen({super.key, required this.favoritedPlants}) ;
    //: super(key:key);

  @override
  State<FavorateScreen> createState() => _FavorateScreenState();
}

class _FavorateScreenState extends State<FavorateScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,

        body: widget.favoritedPlants.isEmpty ?
      Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,
          child: Image.asset("lib/assets/favorited.png"),),

          SizedBox(height: 10,),

          Text("Your favorited Plants", style: TextStyle(color: Colors.green,
          fontWeight: FontWeight.w300,
          fontSize: 18),)
          
        ],
      ),
      ) :
      Container(

        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 30),

        height: size.height *.5,
        child: ListView.builder(

          itemCount: widget.favoritedPlants.length,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index){

            return PlantWidget(index: index, plantList: widget.favoritedPlants);
        }),
      )
    );
  }
}
