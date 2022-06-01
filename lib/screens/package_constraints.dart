import 'package:application2/utils/appbar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PackageConstraintsPage extends StatefulWidget {
  const PackageConstraintsPage({ Key? key }) : super(key: key);

  @override
  State<PackageConstraintsPage> createState() => _PackageConstraintsPageState();
}

class _PackageConstraintsPageState extends State<PackageConstraintsPage> {

  int _selectedInd = 1;
  String selectedWeightMeaseure = "cm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarUtil(name: "Create Package", ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextField("Length", selectedWeightMeaseure),
                  const SizedBox(height: 30,),
                  customTextField("Width", selectedWeightMeaseure),
                  const SizedBox(height: 30,),
                  customTextField("Height", selectedWeightMeaseure),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            
            const SizedBox(height: 35,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Please choose unit of dimensions", style: TextStyle(fontSize: 20, color: Colors.grey),),),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectMeasurementBoxUI("inch", 0),
                  selectMeasurementBoxUI("cm", 1),
                  selectMeasurementBoxUI("foot", 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget customTextField(String title, measuretitle) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.blue[800], fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.27,
                decoration: BoxDecoration(color: Colors.grey[500]),
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child: const TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.end,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(bottom: 10.5),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              measuretitle,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(color: Colors.grey[500]),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget selectMeasurementBoxUI(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedInd = index;
          selectedWeightMeaseure = title;
        },);
      },
      child: _selectedInd == index
        ? Container(
          height: 43,
          width: 90,
          decoration: BoxDecoration(border: Border.all(color: Colors.blue),),
          child: Center(child: Text(title),),
          )
          : DottedBorder(
            color: Colors.blue,
            strokeWidth: 1,
            dashPattern: const [8, 5],
            child: SizedBox(
              height: 39,
              width: 86,
              child: Center(child: Text(title),),
            ),
          ),
    );
  }
}