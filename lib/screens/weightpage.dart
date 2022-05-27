import 'package:application2/utils/appbar.dart';
import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {

  int isSelected = 0;
  final List<String> weights = [
      "<1 kg",
      "1 .. 2 kg",
      "2 .. 4 kg",
      "4 .. 6 kg",
      ">6 kg"
    ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const AppBarUtil(name: "Weight"),
      body: Column(
        children: [
          const SizedBox(height: 35,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink[700],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "What is the estimated total weight ?",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: weights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return weightCards(index);
                      }),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25,),
          Container(
            width: 140,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.blue, width: 2)
            ),
            child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("NEXT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                SizedBox(width: 5,),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),),
          )
        ],
      ),
    );
  }

  Widget weightCards (int index) {
    return Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isSelected = index + 1;
              });
            },
            child: Container(
            height: 40,
            width: isSelected - 1 == index ? 160 : 110,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isSelected - 1 == index
            ? Colors.white
            : Colors.pinkAccent),
            child: Center(
              child: Text(
                "${weights[index]}",
                style: TextStyle(
                  color: isSelected - 1 == index
                  ? Colors.black
                  : Colors.white),
              )
            ),
            ),
          ),
          const SizedBox(height: 15,),
        ],
    );
  }


}
