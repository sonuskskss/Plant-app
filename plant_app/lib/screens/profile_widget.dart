import 'package:flutter/material.dart';

import '../constrants.dart';

class ProfileWidget extends StatelessWidget {

  final IconData  icon;
  final String title;
  const ProfileWidget({
    super.key,
    required this.icon, required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding:EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(

            children: [
              Icon(icon, color: Constrants.blackColor.withOpacity(.5), size: 24,),

              SizedBox(

                width: 16,

              ),


              Text(title,style: TextStyle(
                //color: Constrants.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,

              ),)
            ],
          ),

          Icon(Icons.arrow_forward, color: Constrants.blackColor.withOpacity(.4),size: 22,),

        ],
      ),
    );
  }
}