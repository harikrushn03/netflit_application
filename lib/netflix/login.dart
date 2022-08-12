import 'package:flutter/material.dart';
import 'homepage.dart';

class Loginpage1 extends StatefulWidget {
  const Loginpage1({Key? key}) : super(key: key);

  @override
  State<Loginpage1> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage1> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.transparent,
      body: Stack(children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 170),
            child: Column(children: [
              Row(
                children: const [
                  Text(
                    "Log in to continue",
                    style: TextStyle(
                      color: Color.fromARGB(255, 15, 15, 15),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: width * 0.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    color: const Color.fromARGB(255, 141, 219, 247),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Have a Facebook/Email account?",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "or",
                style: TextStyle(
                  color: Color.fromARGB(255, 15, 15, 15),
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 173, 152, 152).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                      hintText: 'Your Mobile Number',
                    ),
                  ),
                ),
              ),
            ])),
      ]),
    );
  }
}
