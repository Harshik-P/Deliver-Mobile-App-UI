import 'package:application2/utils/appbar.dart';
import 'package:flutter/material.dart';


class MyPackagePage extends StatelessWidget {
  const MyPackagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarUtil(name: "My Package"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: centerWidget(context),
          ),
          const SizedBox(height: 27,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                weightCards("assets/dollar.png", "\$ 15"),
                weightCards("assets/box.png", "8x4x5"),
                weightCards("assets/weight1.png", "2 kg"),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget centerWidget(BuildContext context){
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 13,
                  ),
                  const Text(
                    "Collection of poems",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Books",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(45, 5, 45, 5),
                      child: SizedBox(
                        width: 130,
                        height: 130,
                        child: Image(
                          image: AssetImage("assets/book.png"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(52, 5, 50, 5),
                    child: Text(
                      "Need to deliver a book to my brother",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }



  Container weightCards(String imgPath, String title) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 1.0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image(
                image: AssetImage(imgPath),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }

}