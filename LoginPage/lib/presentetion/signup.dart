import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'main.dart';

void main() => runApp(SignUp());

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight =
        MediaQuery.of(context).size.height; //cihaz ekran boyutu
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 190, 215, 235),
        //  backgroundColor: Color.fromARGB(255, 171, 161, 146),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: deviceHeight * 0.35,
              //color: Colors.blueGrey,
              child: const Padding(
                padding: EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/adim.jpg'),
                  radius: 120,
                ),
              ),
              //width: double.infinity,
            ),
            Container(
              height: deviceHeight * 0.57,
              // color: Colors.blue,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              //   //responsive tasarim(webe uygun)
              child: LayoutBuilder(
                builder: (ctx, constraints) {
                  MainAxisAlignment.center;
                  return Column(children: [
                    Text(
                      'Sign Up Now',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 51, 31, 22),
                          fontFamily: 'IndieFlower'),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.015,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 199, 177, 169),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Center(
                            child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  // fillColor: Colors.pink,
                                  border: InputBorder.none,
                                  hintText: 'user name'),
                            )
                          ],
                        )),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 199, 177, 169),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Center(
                            child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'e-mail adress'),
                        )),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Container(
                      height: constraints.maxHeight * 0.15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 199, 177, 169),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Center(
                            child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: 'password'),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.15,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Text("Sign UP"),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 199, 177, 169),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
                    ),
                  ]);
                },
              ),
            ),
          ]),
        ));
  }
}
