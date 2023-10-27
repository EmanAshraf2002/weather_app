import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget{
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:double.infinity,
      width: double.infinity,
      decoration:const BoxDecoration(
        image:DecorationImage(image: AssetImage('assets/img.png'),
          fit:BoxFit.cover ,
        ),
      ),
      child:const Column(
         mainAxisAlignment: MainAxisAlignment.center ,
         mainAxisSize:MainAxisSize.min,
        children: [
          Text('There is no weather 😔 start',
           style: TextStyle(fontSize: 26, color: Colors.white ,
           fontWeight: FontWeight.bold) ,),

          Text('Searching now 🔍',
            style: TextStyle(fontSize: 28 ,color: Colors.white ,
            fontWeight: FontWeight.bold),),
        ],

      ),
    );
  }



}