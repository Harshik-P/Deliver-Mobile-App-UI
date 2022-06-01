import 'package:application2/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  int checkBoxIndex = 0;
  String genderCheck = "Man";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarUtil(name: "Sign Up", bool: "true",),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      SizedBox(
                        width: 90,
                        height: 30,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return checkBoxUI(index);
                            },),
                      ),
                      showCheckWidget(checkBoxIndex),
                    ],),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.37,
                        child: customTextField("Date of birth")
                    ),
                    const SizedBox(width: 20,),
                    genderButton("Man"),
                    const SizedBox(width: 20,),
                    genderButton("Woman"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: 
                Stack(children: [
                  customTextField("Select country"),
                  boxOnTextField(),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: customTextField("Enter city"),
              ),
              const SizedBox(
                height: 10,
              ),
              questionMarkRowPart(),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                  child: customTextField("Number of passport:"),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 115, child: customTextField("Release date:")
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget checkBoxUI(int index) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              checkBoxIndex = index;
            },);
          },
          child: Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.blue, width: 2),
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  Widget showCheckWidget(value){
    if(value==0){
      return const Positioned(
        bottom: 4,
        left: 1,
        child: Icon(Icons.check, color: Colors.red, size: 25,),
      );
    }
    else if(value==1){
      return const Positioned(
        bottom: 4,
        left: 33,
        child: Icon(Icons.check, color: Colors.red, size: 25,),
      );
    }
    else if(value==2){
      return const Positioned(
        bottom: 4,
        left: 65,
        child: Icon(Icons.check, color: Colors.red, size: 25,),
      );
    }
    else {
      return const Positioned(
        bottom: 4,
        left: 1,
        child: Icon(Icons.check, color: Colors.red, size: 25,),
      );
    }
  }

  Widget genderButton (String title) {
    return InkWell(
      onTap: () {
        setState(() {
          genderCheck = title;
        },);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: genderCheck == title ? Colors.transparent : Colors.grey
          ),
            color: genderCheck == title ? Colors.blue : Colors.white
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: genderCheck == title ? Colors.white : Colors.grey),
          ),
        ),
      ),
    );
  }

  Widget customTextField(String name) {
    return TextField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(30),
      ],
      decoration: InputDecoration(
        hintText: name,
      ),
    );
  }

  Widget boxOnTextField() {
    return Positioned(
      right: 3,
      bottom: 10,
        child: Container(
          width: 43,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 9,
                width: 9,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey
                ),
              ),
              Container(
                height: 9,
                width: 9,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey
                ),
              ),
              Container(
                height: 9,
                width: 9,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey
                ),
              ),
            ],
          ),
        ),
    );
  }

  Widget questionMarkRowPart() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: SizedBox(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: const Center(
                    child: Text(
                      "?",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                  ),
              ),
              const SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 80,
                  child: Text(
                    "Please enter your personal number for your delivery security",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
