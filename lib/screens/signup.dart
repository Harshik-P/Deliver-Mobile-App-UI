import 'package:application2/layout.dart';
import 'package:application2/screens/createpackage.dart';
import 'package:application2/utils/appbar.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  int checkBoxIndex = 0;
  String genderCheck = "Male";

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
                            }),
                      ),
                      showWidget(checkBoxIndex),
                    ]),
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
                    manButton(),
                    const SizedBox(width: 20,),
                    womanButton()
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Stack(children: [
                  customTextField("Select country"),
                  boxOnTextField(),
                ]),
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
                  child: customTextField("Number of passport:")),
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
              )
            ],
          ),
        ),
      ),
    );
  }


  Row checkBoxUI(int index) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              checkBoxIndex = index;
            });
          },
          child: Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 2)),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  Positioned showWidget(value){
    if(value==0){
      return const Positioned(
          bottom: 4,
          left: 1,
          child: Icon(Icons.check, color: Colors.red, size: 25,)
        );
    }
    else if(value==1){
      return const Positioned(
          bottom: 4,
          left: 33,
          child: Icon(Icons.check, color: Colors.red, size: 25,)
        );
    }
    else if(value==2){
      return const Positioned(
          bottom: 4,
          left: 65,
          child: Icon(Icons.check, color: Colors.red, size: 25,)
        );
    }
    else {
      return const Positioned(
          bottom: 4,
          left: 1,
          child: Icon(Icons.check, color: Colors.red, size: 25,)
        );
    }
  }

  InkWell manButton() {
    return InkWell(
      onTap: () {
        setState(() {
          genderCheck = "Male";
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color:
                    genderCheck == "Male" ? Colors.transparent : Colors.grey),
            color: genderCheck == "Male" ? Colors.blue : Colors.white),
        child: Center(
            child: Text(
          "Man",
          style: TextStyle(
              color: genderCheck == "Male" ? Colors.white : Colors.grey),
        )),
      ),
    );
  }

  InkWell womanButton() {
    return InkWell(
      onTap: () {
        setState(() {
          genderCheck = "Female";
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color:
                    genderCheck == "Female" ? Colors.transparent : Colors.grey),
            color: genderCheck == "Female" ? Colors.blue : Colors.white),
        child: Center(
            child: Text(
          "Woman",
          style: TextStyle(
              color: genderCheck == "Female" ? Colors.white : Colors.grey),
        )),
      ),
    );
  }

  TextField customTextField(String name) {
    return TextField(
      decoration: InputDecoration(hintText: "${name}"),
    );
  }

  Positioned boxOnTextField() {
    return Positioned(
        right: 3,
        bottom: 10,
        child: Container(
          width: 43,
          height: 20,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 9,
                width: 9,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
              Container(
                height: 9,
                width: 9,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
              Container(
                height: 9,
                width: 9,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              )
            ],
          ),
        ));
  }

  Padding questionMarkRowPart() {
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
                )),
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
                          fontWeight: FontWeight.w400),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }


}
