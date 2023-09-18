import 'package:flutter/material.dart';

import '../constrants.dart';
import '../models/plants.dart';


class DetailScreen extends StatefulWidget {
  final int plantId;
   DetailScreen({super.key, required this.plantId});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  bool toggleIsFavorated(bool isFavorited){

    return !isFavorited;
  }



  bool toggleIiSelected(bool isSelected){

    return !isSelected;
  }


  @override
  Widget build(BuildContext context) {

    Size  size = MediaQuery.of(context).size;
    List<Plant> _plantList  = Plant.plantList;
    return Scaffold(

        backgroundColor: Colors.blueGrey.shade200,
      body: Stack(

        children: [

          Positioned(
            top: 65,
            left: 20,
            right: 20,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },

                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white70
                    ),

                    child: Icon(Icons.close, color: Colors.teal,weight: 55,),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    //Navigator.pop(context);

                  },

                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white70
                    ),

                    child: IconButton(
                      onPressed: (){
                     setState(() {
                       bool isFavorited = toggleIsFavorated(
                           _plantList[widget.plantId].isFavorated);
                       _plantList[widget.plantId].isFavorated = isFavorited;
                     });
                      },
                      icon: Icon(

                        _plantList[widget.plantId].isFavorated == true
                            ? Icons.favorite : Icons.favorite_border,
                        color: Colors.teal,),
                    )
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(

              width: size.width *.8,
              height: size.width *.8,

              padding: EdgeInsets.all(20),

              child: Stack(
                children: [

                  Positioned(
                    top: 1,
                    right: 100,
                    left: 1,
                    bottom: 1,
                    child: SizedBox(

                      height: 350,
                      child: Image.asset(_plantList[widget.plantId].imageUrl),
                    ),
                  ),


                  Positioned(

                    top: 10,
                    right: 0,
                    child: SizedBox(
                      height: 200,
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [

                        PlantFuture(title: "Size", plantFuture: _plantList[widget.plantId].size.toString(),),
                        PlantFuture(title: "Humidity", plantFuture: _plantList[widget.plantId].humidity.toString(),),
                        PlantFuture(title: "Temperature", plantFuture: _plantList[widget.plantId].temperature.toString(),),
                      ],
                    ),),
                  )
                ],
              ),
            ),
          ),

          Positioned(
              bottom: 0,
              left: 0,
              right: 0,


              child: Container(

                padding: EdgeInsets.only(top: 80,left: 30,right: 30),
                height: size.height *.5,
                width: size.width,
                decoration: BoxDecoration(
                  color: Constrants.primaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                  )
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_plantList[widget.plantId].plantName, style: TextStyle(color: Constrants.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),),


                            SizedBox(height: 10,),

                            Text(r'$'+ _plantList[widget.plantId].price.toString(),style: TextStyle(color: Constrants.primaryColor, fontSize: 24,
                            fontWeight: FontWeight.bold),)
                          ],
                        ),

                        Row(

                          children: [
                            Text(_plantList[widget.plantId].rating.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),

                            Icon(Icons.star, size: 30,color: Colors.yellow.shade400,)


                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: 5,

                    ),

                    Expanded(child: Text(_plantList[widget.plantId].description.toString(),
                      textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.5,fontSize: 18,
                       //fontWeight: FontWeight.w600
                       // color: Constrants.blackColor.withOpacity(.7),
                    ),))
                  ],

                ),
              ))
        ],
      ),

      floatingActionButton: SizedBox(

        width: size.width * .9,
        height: 50,
        child: Row(

          children: [
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                onPressed: (){
                setState(() {
                   bool isSelected = toggleIiSelected(_plantList[widget.plantId].isSelected);

                   _plantList[widget.plantId].isSelected = isSelected;
                });

                },
                icon: Icon(Icons.shopping_cart,
                  size: 30,
                  color: _plantList[widget.plantId].isSelected == true ?
                  Colors.white : Constrants.primaryColor,),
              ),

              decoration: BoxDecoration(
                color: _plantList[widget.plantId].isSelected == true ? Constrants.primaryColor.withOpacity(.5)
                  : Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,1),
                    blurRadius: 5,
                    color: Constrants.primaryColor.withOpacity(.3)
                  )
                ]
              ),
            ),


            SizedBox(
              width: 20,
            ),

            Expanded(

              child: Container(
                decoration: BoxDecoration(
                  color: Constrants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(offset: Offset(0,1),
                    blurRadius: 5,
                    color: Constrants.primaryColor.withOpacity(.3))
                  ]
                ),

                child: Center(
                  child: Text("Buy Now",style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class PlantFuture extends StatelessWidget {

  final String plantFuture;
  final String title;

  const PlantFuture({
    super.key,
    required this.plantFuture,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(title,style: TextStyle(color: Colors.teal,fontSize: 14
        ),),

        Text(plantFuture, style: TextStyle(color: Colors.teal,fontSize: 20, fontWeight: FontWeight.bold),)
      ],

    );
  }
}

















