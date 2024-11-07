import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/userdwnld.dart';
import 'package:wallpaper_app/usergrid.dart';
import 'package:wallpaper_app/userwallselect.dart';


class Userwallpaper extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => UserWallpaperState();
}
class UserWallpaperState extends State<Userwallpaper>{

  int _selectindex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectindex = index;
    });
  }
    final List<Widget> _children =[
    Userwallselect(),
    Usergrid(),
    Userdwnld(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,

      body: SafeArea(child: _children[_selectindex]),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectindex,
        onTap:_navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        ],
      ),

    );
  }

}