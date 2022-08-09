import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//import 'main.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GestureTapCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceHeight =
        MediaQuery.of(context).size.height; //cihaz ekran boyutu
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 190, 215, 235),
        //backgroundColor: Color.fromARGB(255, 171, 161, 146),
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
                      'Login Now',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 51, 31, 22),
                          fontFamily: 'IndieFlower'),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
                    ),
                    // Text(
                    //   "Please enter your information",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Color.fromARGB(255, 55, 52, 52)),
                    // ),
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
                                  hintText: 'e-mail adress'),
                            )
                          ],
                        )),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 7, 7, 7)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.005,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.15,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("LOGIN"),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 199, 177, 169),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'IndieFlower'),
                          children: [
                            TextSpan(
                                text: ' Register',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 196, 113, 108),
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed('/sign');
                                  })
                          ]),
                    )
                  ]);
                },
              ),
            ),
          ]),
        ));
  }
}
