import 'package:application2/screens/createpackage.dart';
import 'package:application2/screens/mypackage.dart';
import 'package:application2/screens/packageconstraints.dart';
import 'package:application2/screens/packagedetails.dart';
import 'package:application2/screens/weightpage.dart';
import 'package:flutter/material.dart';


class LayoutPage extends StatefulWidget {
  const LayoutPage({ Key? key }) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {

  int pageindex = 0;

  @override
  Widget build(BuildContext context) {

    final List<Widget> wids = [
      createPackage(),
      MyPackagePage(),
      WeightPage(),
      PackageDetailsPage(),
      PackageConstraintsPage()
    ];


    return Scaffold(
      body: wids[pageindex],
      bottomNavigationBar: builNavBar(context)
    );
  }

  Container builNavBar (BuildContext context){
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.grey,
          offset: Offset(1.0,1.0),
          blurRadius: 7.0,
        )]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(onPressed: (){
            setState(() {
              pageindex = 0;
            });
          }, 
            icon: pageindex==0 ?
            const Icon(Icons.shopping_bag_rounded):
            const Icon(Icons.shopping_bag_outlined),
            iconSize: 35, color: pageindex==0? Colors.blue : Colors.grey,
          ),
          IconButton(onPressed: (){
            setState(() {
              pageindex = 1;
            });
          }, 
          icon: pageindex==1 ?
            const Icon(Icons.directions_car_rounded):
            const Icon(Icons.directions_car_outlined),
            iconSize: 35, color: pageindex==1? Colors.blue : Colors.grey,
          ),
          IconButton(onPressed: (){
            setState(() {
              pageindex = 2;
            });
          }, 
          icon: pageindex==2 ?
            const Icon(Icons.location_on_rounded):
            const Icon(Icons.location_on_outlined),
            iconSize: 35, color: pageindex==2? Colors.blue : Colors.grey,
          ),
          IconButton(onPressed: (){
            setState(() {
              pageindex = 3;
            });
          }, 
            icon: pageindex==3 ?
            const Icon(Icons.email_rounded):
            const Icon(Icons.email_outlined),
            iconSize: 35, color: pageindex==3? Colors.blue : Colors.grey,),
          IconButton(onPressed: (){
            setState(() {
              pageindex = 4;
            });
          }, 
          icon: pageindex==4 ?
            const Icon(Icons.menu_rounded):
            const Icon(Icons.menu_outlined),         
          iconSize: 35, color: pageindex==4? Colors.blue : Colors.grey,),
        ],),
      ),
    );
  }
}