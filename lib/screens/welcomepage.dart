import 'package:application2/screens/signup.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.55,
                color: Colors.blue,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.1,
                left: MediaQuery.of(context).size.width*0.38,
                child: const Text("WELCOME!", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700),)
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.2,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 256,
                  child: const Image(image: AssetImage("assets/welcomepage.png"), fit: BoxFit.fitWidth,))
              )
            ]
          ),
          const SizedBox(height: 55,),
          InkWell(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()),
            )
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: const Center(child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),)),
            ),
          ),
          const SizedBox(height: 15,),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "Already have an account? ", style: TextStyle(fontSize: 15)),
                TextSpan(text: "Login", style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold))
              ]
            )
          ),
          const SizedBox(height: 65,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customButton(),
                const SizedBox(width: 15,),
                customButton()
              ],
            ),
          )
        ],      
      ),
    );
  }

  Widget customButton() {
    return Container(
        height: 35,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.blue, width: 3),
        ),
        child: const Center(
            child: Text(
          "Lorem",
          style: TextStyle(fontWeight: FontWeight.bold),
        )));
  }
}