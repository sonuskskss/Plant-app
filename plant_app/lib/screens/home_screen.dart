import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/models/plants.dart';
import 'package:plant_app/screens/plant_widget.dart';

import '../constrants.dart';
import 'detail_scren.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    List<Plant> _plantList = Plant.plantList;


    List<String> _plantType = [

      "Recommended",
      "Indoor",
      "Outdoor",
      "Garden",
      "Supplement",
    ];


    bool toggleIsFavorated(bool isFavorited){

      return !isFavorited;
    }




    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,


      body:
      SingleChildScrollView(
       // scrollDirection: Axis.horizontal,
       child:
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16
                    ),
                    width: size.width *0.9,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: Colors.black54.withOpacity(.5),),

                        Expanded(child: TextFormField(
                          showCursor: false,
                          decoration: InputDecoration(
                            hintText: "Search plants...",
                            hintStyle: TextStyle(color: Colors.white60),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        )),

                        Icon(Icons.mic, color: Colors.black54.withOpacity(.6),),
                      ],
                    ),

                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),


                ],
              ),
            ),



            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              width: size.width,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _plantType.length,

                  itemBuilder: (context, index){

                    return Padding(padding: EdgeInsets.all(8),

                      child: GestureDetector(

                        onTap: (){
                          setState(() {
                            selectedIndex = index;
                          });
                        },

                        child: Text(_plantType[index], style: TextStyle(
                            fontSize: 18,
                            fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.bold,
                            color: selectedIndex == index ? Constrants.primaryColor : Colors.white
                        ),),
                      ),

                    );
                  }),
            ),

            SizedBox(

              height: size.height *.3,
              //
              //
              //
              //
              //
              //

              child: ListView.builder(

                  itemCount: _plantList.length,
                  //_plantList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return GestureDetector(

                      onTap: (){
                        Navigator.push(context,
                            PageTransition(child: DetailScreen(
                              plantId: _plantList[index].plantId,
                            ), type: PageTransitionType.bottomToTop));
                      },
                      child: Container(

                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 10),

                        child: Stack(
                          children: [
                            Positioned(

                              top: 7,
                              right: 8,
                              child: Container(

                                height: 50,
                                width: 50,


                                        child: IconButton(

                                          onPressed: (){
                                            setState(() {
                                              bool isFavorited = toggleIsFavorated(_plantList[index].isFavorated);

                                              _plantList[index].isFavorated = isFavorited;
                                            });
                                          },
                                          icon: Icon(_plantList[index].isFavorated == true ? Icons.favorite : Icons.favorite_border ,                                  color: Constrants.primaryColor,
                                          ),

                                          iconSize: 30,

                                      ),


                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                            ),


                            Positioned(
                                left: 50,
                                right: 50,
                                bottom: 50,

                               child: Image.asset(_plantList[index].imageUrl,)
                            ),


                            Positioned(

                              bottom: 15,
                              left: 20,
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(_plantList[index].categary,style: TextStyle(color: Colors.white, fontSize: 16),),
                                  Text(_plantList[index].plantName,style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                            Positioned(
                              bottom: 15,
                              right: 20,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal:10, vertical: 2),

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                child: Text(r'$'+_plantList[index].price.toString(), style: TextStyle(color: Colors.deepOrangeAccent.shade200,
                                  fontSize: 16,
                                ),),
                              ),
                            )
                          ],
                        ),

                        decoration: BoxDecoration(
                            color: Constrants.primaryColor.withOpacity(.8),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    );
                  }),
            ),

            Container(

              padding: EdgeInsets.only(left: 16, bottom: 20, top: 20),

              child: Text("New Plants",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.teal),),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: size.height *.5,

              child: ListView.builder(

                  itemCount: _plantList.length,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return PlantWidget(index: index, plantList: _plantList,);
                  }),
            )
          ],
       // ),
      ))
    );
  }
}











