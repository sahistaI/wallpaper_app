import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Usergrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Expanded(
       child: GridView.builder(
          itemCount: 10,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
             mainAxisSpacing: 11,
             crossAxisSpacing: 11,
             childAspectRatio: 9/16
           ),
           itemBuilder: (_,index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue.shade200,
              ),
       
            );
           }),
     ),
   );
  }

}