
import 'package:flutter/material.dart';
import 'package:plant_app/ui/root_Page.dart';

import '../constrants.dart';
import 'login_screen.dart';


int currentIndex =0;
class OnbordingScreen extends StatefulWidget {


  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {


  final PageController _pageController = PageController(initialPage: 0);




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey.shade200,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey.shade200,


        actions: [

        Padding(padding: EdgeInsets.only(right: 20,top: 20),
        child: InkWell(

          onTap: ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>RootPage()
              )
          ),

          child: Text("Skip",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 23, ),),
        ),
        )
      ],
      ),

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex = page;
              });


            },

            controller: _pageController,
            children: [



              createPage(image: 'lib/assets/plant-one.png',
              title: Constrants.titleOne,
              description: Constrants.descriptionOne,),

              createPage(image: 'lib/assets/plant-four.png',
              title: Constrants.titleOne,
              description: Constrants.descriptionOne,),

              createPage(image: 'lib/assets/plant-six.png',
              title: Constrants.titleTwo,
              description: Constrants.descriptionTwo,),

              createPage(image: 'lib/assets/plant-five.png',
              title: Constrants.titleThree,
              description: Constrants.descriptionThree,),
            ],
          ),

          Positioned(
              bottom: 80,
              left: 30,
              child: Row(
            children: _buildIndicator(),
          )),

    Positioned(

    bottom: 60,
    right: 30,

    child: Container(


    child: IconButton(

    onPressed: (){

      setState(() {
        if(currentIndex<2){
          currentIndex++;
    }
        if(currentIndex<3){
          _pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    }

        else{
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>RootPage()
    )
    );
    }
      });
    },
    icon: Icon(Icons.arrow_forward,size: 24,color: Colors.white,),
    ),

    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Constrants.primaryColor
    ),
    )
    )
        ],
      ),
    );
  }
}






Widget _indicator(bool isActive){

  return AnimatedContainer(duration: Duration(milliseconds: 400),
    height: 10,
    width: isActive ? 20 : 8,
    margin: EdgeInsets.only(right: 5),

    decoration: BoxDecoration(
        color: Constrants.primaryColor,
        borderRadius: BorderRadius.circular(5)
    ),
  );
}


List<Widget> _buildIndicator(){

  List<Widget> indicators = [];

  for(int i= 0; i<3; i++){
    if(currentIndex == i){
      indicators.add(_indicator(true));
    }
    else{
      indicators.add(_indicator(false));
    }
  }

  return indicators;
}




class createPage extends StatelessWidget {

  final String image;
  final String title;
  final String description;

   createPage({
    super.key,
    required this.image,
    required this.description,
     required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(left: 50, right: 50,bottom: 80),
      child: Column(

        children: [
          SizedBox(height: 390,
              child: Image.asset(image,fit: BoxFit.fill,),
          ),

          SizedBox(height: 20,),

          Text(title,textAlign: TextAlign.center
            , style: TextStyle(color: Constrants.primaryColor, fontSize: 30, fontWeight: FontWeight.bold),),

          SizedBox(height: 20,),

          Text(description,
          textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400,color: Colors.green

              ),),

          SizedBox(height: 20,),


        ],
      ),
    );
  }
}
