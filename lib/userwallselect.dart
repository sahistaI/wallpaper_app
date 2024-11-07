import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userwallselect extends StatelessWidget{

  final List<Color> containerColors = [
    Colors.redAccent.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
    Colors.grey.withOpacity(0.5),
    Colors.orange.withOpacity(0.5),
    Colors.purple.withOpacity(0.5),
    Colors.yellow.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
    Colors.cyan.withOpacity(0.5),
    Colors.pink.withOpacity(0.5),
    Colors.amber.withOpacity(0.5)
  ];

  final List<Color> smallcontainerColors = [
    Colors.cyan.withOpacity(0.5),
    Colors.pink.withOpacity(0.5),
    Colors.amber.withOpacity(0.5),
    Colors.redAccent.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
    Colors.grey.withOpacity(0.5),
    Colors.orange.withOpacity(0.5),
    Colors.purple.withOpacity(0.5),
    Colors.yellow.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
  ];

  final List<Color> gridcontainerColors = [
    Colors.grey.withOpacity(0.5),
    Colors.orange.withOpacity(0.5),
    Colors.purple.withOpacity(0.5),
    Colors.yellow.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
    Colors.cyan.withOpacity(0.5),
    Colors.pink.withOpacity(0.5),
    Colors.amber.withOpacity(0.5),
    Colors.redAccent.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search,color: Colors.blueGrey[400],),
                ),
                Container(
                  child: Text('Find Wallpaper...',style: TextStyle(
                    color: Colors.blueGrey[400],
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),

    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0,vertical:4.0),
          child: Text( 'Best of the month', style: TextStyle(
            fontSize: 22, fontWeight:FontWeight.bold
          ),

          ),
        ),
        /// Horizontal Scroll
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
              return Container(
                alignment: Alignment.center,
                width: 170,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: containerColors[index % containerColors.length],
                  borderRadius: BorderRadius.circular(8)
                ),
              );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0,vertical:4.0),
          child: Text( 'The Color tone', style: TextStyle(
              fontSize: 22, fontWeight:FontWeight.bold
          ),

          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
                return Container(
                  alignment: Alignment.center,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: smallcontainerColors[index % smallcontainerColors.length],
                      borderRadius: BorderRadius.circular(8)
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0,vertical:4.0),
          child: Text( 'Categories', style: TextStyle(
              fontSize: 22, fontWeight:FontWeight.bold
          ),

          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,),
          child: SizedBox(
            height: 200,
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                    childAspectRatio: 2/1
                ),
                itemBuilder: (_,index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: gridcontainerColors[index % gridcontainerColors.length],
                    ),

                  );
                }),
          ),
        ),




      ],

    )

    );
  }

}