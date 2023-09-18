
import 'package:flutter/material.dart';
import 'package:plant_app/constrants.dart';
import 'package:plant_app/screens/profile_widget.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,

        body: SingleChildScrollView(

        child:Container(

          padding: EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("lib/assets/mitra.jpg"),
                ),

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:Border.all(
                    color: Constrants.primaryColor.withOpacity(.8),
                    width: 5.0,
                  )
                ),

              ),

              SizedBox(height: 10,),
              SizedBox(
                width: size.width *.5,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dipak Rajput ",style: TextStyle(color: Constrants.primaryColor,
                    fontSize: 25,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: 24,
                      child: Image.asset("lib/assets/verified.png"),

                    ),

                  ],
                ),

              ),

              Text("chatur00000@gmail.com",style: TextStyle(
                color: Constrants.primaryColor.withOpacity(.8)
              ),),

              SizedBox(height: 30,)

              ,
              SizedBox(height:  size.height*.5,
              width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    ProfileWidget(icon: Icons.person, title: "My Profile",),
                    ProfileWidget(icon: Icons.settings, title: "Settings",),
                    ProfileWidget(icon: Icons.notifications, title: "Notifications",),
                    ProfileWidget(icon: Icons.chat, title: "FAQs",),
                    ProfileWidget(icon: Icons.share, title: "Share",),
                    ProfileWidget(icon: Icons.logout, title: "Log Out",),
                  ],
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
