import 'dart:math';
import 'package:application2/utils/appbar.dart';
import 'package:flutter/material.dart';


class CreatePackage extends StatefulWidget {
  const CreatePackage({Key? key}) : super(key: key);

  @override
  State<CreatePackage> createState() => _CreatePackageState();
}

class _CreatePackageState extends State<CreatePackage> {

  int selectedTransport = 0;
  List<String> transportImages = ["assets/baby-car.png", "assets/airplane.png", "assets/bus.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarUtil(name: "Create Package",),
      body: 
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextField("From"),
                    const SizedBox(height: 30,),
                    dateTextFields(),
                    const SizedBox(height: 25,),
                    customTextField("To"),
                    const SizedBox(height: 30,),
                    dateTextFields(),
                    const SizedBox(height: 30,),
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Preference for Transport",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          transportPref(transportImages[0], 0),
                          transportPref(transportImages[1], 1),
                          transportPref(transportImages[2], 2),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }



  Widget customTextField (String title) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Stack(children: [
        Positioned(
          top: 15,
          child: Text(
            title,
            style: TextStyle(color: Colors.grey[600], fontSize: 19),
          ),
        ),
        TextField(
          cursorColor: Colors.black,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            suffixIcon: Transform.rotate(
              angle: 330 * pi / 180,
              child: const Icon(
                Icons.send,
                color: Colors.transparent,
              ),
            ),
            suffixIconColor: Colors.transparent,
          ),
          style: const TextStyle(fontSize: 20),
        ),
        Positioned(
          right: 10,
          top: 12,
          child: Transform.rotate(
            angle: 330 * pi / 180,
            child: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
        ),
      ],),
    );
  }

  Widget dateTextFields () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Date:",
          style: TextStyle(color: Colors.grey[600], fontSize: 19),
        ),
        Row(
          children: const [
            Icon(
              Icons.calendar_today,
              size: 21,
              color: Colors.blue,
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
                height: 35,
                width: 35,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12),),
                  style: TextStyle(fontSize: 17),
                ),),
            SizedBox(
              width: 8,
            ),
            Text("/"),
            SizedBox(
              width: 8,
            ),
            SizedBox(
                height: 35,
                width: 35,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 12),),
                  style: TextStyle(fontSize: 17),
                ),),
            SizedBox(
              width: 8,
            ),
            Text("/"),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 35,
              width: 35,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ],
    );

  }



  Widget transportPref(String title, int index) {
    return 
        InkWell(
          onTap: (){
            setState(() {
              selectedTransport = index;
            },);
          },
          child: Container(
            height: 100,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 5.0,
                  ),
                ],
                color: selectedTransport == index ? Colors.blue : Colors.white),
            child:
                Image(image: AssetImage(title), color: selectedTransport == index ? Colors.white : Colors.blue),
          ),
        );
  }


}
