
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app/screens/plant_widget.dart';

import '../constrants.dart';
import '../models/plants.dart';


class CartPage extends StatefulWidget {

  final List<Plant> addedToCartPlants;
  CartPage({super.key, required this.addedToCartPlants});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,

        body: widget.addedToCartPlants.isEmpty ?
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,
                child: Image.asset("lib/assets/add-cart.png"),),

              SizedBox(height: 10,),

              Text("Your Cart is Empty", style: TextStyle(color: Colors.green,
                  fontWeight: FontWeight.w300,
                  fontSize: 18),)

            ],
          ),
        ) :
        Container(

          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 30),

          height: size.height *.5,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(

                    itemCount: widget.addedToCartPlants.length,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context,index){

                      return PlantWidget(index: index, plantList: widget.addedToCartPlants);
                    }),
              ),

              Column(


                children: [
                  Divider(thickness: 1.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text("Tools",style:  TextStyle(fontSize: 23, fontWeight: FontWeight.w300),),

                      Text(r'$110',style: TextStyle(
                        fontSize: 24, color: Constrants.primaryColor,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
