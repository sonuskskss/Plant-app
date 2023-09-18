import 'package:flutter/material.dart';

import '../constrants.dart';



class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {

    Size size =  MediaQuery.of(context).size;
    //Constrants  _constants = Constrants();
    return Scaffold(

      body: Stack(


        children: [
          Positioned(
            top: 50,
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
                          color: Constrants.primaryColor.withOpacity(.15)
                      ),

                      child: Icon(Icons.close, color: Constrants.primaryColor,),
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
                            color: Constrants.primaryColor.withOpacity(.15)
                        ),

                        child: IconButton(
                          onPressed: (){
                            // setState(() {
                            //   bool isFavorited = toggleIsFavorated(
                            //       _plantList[widget.plantId].isFavorated);
                            //   _plantList[widget.plantId].isFavorated = isFavorited;
                            // });
                          },


                          icon: Icon( Icons.share,color: Constrants.primaryColor,

                            // _plantList[widget.plantId].isFavorated == true
                            //     ? Icons.favorite : Icons.favorite_border,
                            // color: Constrants.primaryColor,
                            //
                          ),
                        )
                    ),
                  ),
                ],
              )),

          Positioned(
            top: 100,
              right: 20,
              left: 20,

              child: Container(
                width: size.width *.8,
                height: size.height *.8,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Image.asset("lib/assets/code-scan.png", height: 100,),

                    SizedBox(height: 20,),

                    Text("Tap to Scan", style: TextStyle(color: Constrants.primaryColor.withOpacity(.80),
                        fontWeight: FontWeight.w500,
                    fontSize: 20),)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

