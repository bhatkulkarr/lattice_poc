import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lattice_scanner_app/Constants/consts.dart';
import 'package:lattice_scanner_app/LandingPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String ?userName;
  String ?password;
  TextEditingController _usernameTC = new TextEditingController();
  TextEditingController _passwordTC = new TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    double topcontheight = MediaQuery.of(context).size.height * 0.22;
    double topcontweight = MediaQuery.of(context).size.width * 0.80;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: topcontheight,
              width: topcontweight,
              color: Colors.white,
              child: Image.asset("Images/LatticesemiconLogo.png"),
              ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [

                  TextFormField(
                    controller: _usernameTC,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FaIcon(
                          FontAwesomeIcons.user,
                          color: primaryColor,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5))),

                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5))),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "User name",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  TextField(
                    controller: _passwordTC,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FaIcon(
                          FontAwesomeIcons.eye,
                          color: primaryColor,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5))),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5))),

                      hintText: "Password",
                    ),

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forget Password",
                        textAlign: TextAlign.right, style: genrateStyle(16.0,FontWeight.normal,Colors.red)),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: Colors.amberAccent,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                    onPressed: () {

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) {
                          return LandingPage();
                        }),
                      );

                    },
                    child:   Text("Login",
                        textAlign: TextAlign.center,style: genrateStyle(18.0,FontWeight.bold,Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Visibility(
                    visible: false,
                    child: Column(
                      children: [
                        Visibility(
                          visible: false,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0),
                            ),
                            color: Colors.white,
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                            onPressed: () {


                            },
                            child:   Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.google,
                                    color: Colors.red),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Signin with google",
                                    textAlign: TextAlign.center, style: btnTextGoogleStyle),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          color: Colors.white,
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
                          onPressed: () {


                          },
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.facebook,
                                  color: primaryColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Signin with facebook",
                                  textAlign: TextAlign.center, style: btnTextGoogleStyle),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),


                  Text("Don't have an account? Create Account",
                      textAlign: TextAlign.center, style: btnTextGoogleStyle),
                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.fingerprint,color: primaryColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Login With Fingerprint",
                          textAlign: TextAlign.center, style: genrateStyle(16.0,FontWeight.bold,primaryColor)),
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
