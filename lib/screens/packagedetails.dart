import 'package:application2/utils/appbar.dart';
import 'package:flutter/material.dart';


class PackageDetailsPage extends StatefulWidget {
  const PackageDetailsPage({ Key? key }) : super(key: key);

  @override
  State<PackageDetailsPage> createState() => _PackageDetailsPageState();
}

class _PackageDetailsPageState extends State<PackageDetailsPage> {

  int selectedInd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarUtil(name: "Package Details",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const SizedBox(height: 20,),
                    const Text("How big is your package ?", style: TextStyle(fontSize: 16,),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        packageSizeBoxUI("small", 0),
                        packageSizeBoxUI("medium", 1),
                        packageSizeBoxUI("large", 2)
                    ],),
                          
                    const SizedBox(height: 30,),
                    const Text("Item name & description", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    const TextField(),
                    const SizedBox(height: 18,),
                    const Text("Person/Shop in charge",  style: TextStyle(color: Colors.grey, fontSize: 16),),
                    const TextField(),
                    const SizedBox(height: 18,),
                    const Text("Contact Number",  style: TextStyle(color: Colors.grey, fontSize: 16),),
                    const TextField(),
                    const SizedBox(height: 30,),
                    const Text("Do you want the driver to purchase this item for you?", style: TextStyle(fontSize: 16),),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        boolButtons("No"),
                        const SizedBox(width: 30,),
                        boolButtons("Yes")
                      ],
                    )
                  ],
                  ),
              ),
          ],
        ),
      ));
  }


  Widget packageSizeBoxUI(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedInd = index;
        });
      },
      child: Container(
        height: 43,
        width: 90,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            color: selectedInd == index ? Colors.blue : Colors.white),
        child: Center(
            child: Text(
          "${title}",
          style: TextStyle(
              color: selectedInd == index ? Colors.white : Colors.black,
              fontSize: 16),
        )),
      ),
    );
  }


  Widget boolButtons(String bool) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: bool=="No" ? Colors.white : Colors.blue,
          border:  bool=="No" ? Border.all(color: Colors.blue, width: 2) : Border.all(color: Colors.transparent)
      ),
      child: Center(
        child: Text("${bool}", style: TextStyle(color:  bool=="No" ? Colors.black : Colors.white),),
      ),
    );
  }


}