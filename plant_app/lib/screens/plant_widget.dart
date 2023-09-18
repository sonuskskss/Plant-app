import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constrants.dart';
import '../models/plants.dart';
import 'detail_scren.dart';


class PlantWidget extends StatelessWidget {
   PlantWidget({
    super.key,
    required this.index, required this.plantList,
    //required this.size,
  }) ;

   final List<Plant> plantList;
  final int index;


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(

      onTap: (){

        Navigator.push(context,
            PageTransition(child: DetailScreen(

              plantId: plantList[index].plantId,
            ), type: PageTransitionType.bottomToTop));
      },
      child: Container(

        decoration: BoxDecoration(
          color: Colors.teal.shade400,

          borderRadius: BorderRadius.circular(10),

        ),
        height: 80,
        padding: EdgeInsets.only(left: 10, top: 10),
        margin: EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Constrants.primaryColor.withOpacity(.9),
                      shape: BoxShape.circle
                  ),
                ),

                Positioned(

                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 80,
                      child: Image.asset(plantList[index].imageUrl,fit: BoxFit.fill,),
                  ),
                ),


                Positioned(
                  bottom: 3,
                  left: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(plantList[index].categary, style: TextStyle(color: Colors.white),),
                      Text(plantList[index].plantName,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                    ],
                  ),
                )
              ],
            ),

            Container(

              padding: EdgeInsets.only(right: 10),
              child: Text(r'$'+plantList[index].price.toString(), style: TextStyle( fontSize: 18,color:Colors.white  ),),
            )
          ],
        ),
      ),
    );
  }
}