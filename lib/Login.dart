import 'dart:ui';
import 'package:bems/forgotpsd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  bool isRememberMe = false;
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'EMAIL',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 14),
        Container(
          alignment: Alignment.centerLeft,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 194, 194, 194),
              borderRadius: BorderRadius.circular(
                (10),
              )),
          height: 40,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(13.0),
              hintText: 'Enter your Email',
              hintStyle: TextStyle(),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PASSWORD',
          style: TextStyle(
              color: Color.fromARGB(255, 3, 3, 3),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 14),
        Container(
          alignment: Alignment.centerLeft,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 196, 196, 196),
              borderRadius: BorderRadius.circular(
                (10),
              )),
          height: 40,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(13.0),
              hintText: 'Enter your Password',
              hintStyle: TextStyle(),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgetpass() {
    
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
              child: Text("Forgot password"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return BackdropFilter(filter:ImageFilter.blur(sigmaX: 6,sigmaY: 6),
                          child: AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              title: const Text(
                                "OTP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Container(
                                    padding: EdgeInsets.all(30),
                                    decoration: BoxDecoration(

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: const [
                                              _textFieldOTP(
                                                  first: true, last: false),
                                              _textFieldOTP(
                                                  first: false, last: false),
                                              _textFieldOTP(
                                                  first: false, last: false),
                                              _textFieldOTP(
                                                  first: false, last: true),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),

                                         
                                             GestureDetector(
                    onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const psd()));},
                    child: Container(
                      width: 80,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff12734C),
                      ),
                      child: Center(
                        child: Text(
                          "SUBMIT",
                          style:TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  
                
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "Didn’t receive OTP ?",
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                   style: TextButton.styleFrom(
    foregroundColor: Color(0xff12734C),
  ),
                                                  child: const Text("Resend OTP",),
                                                  
                                                ),
                                              ])
                                        ]))
                              ]));
                    });
              }));
    
  }
  

  Widget buildRememberme() {
    return Container(
      height: 20,
      child: Row(children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: Color.fromARGB(255, 0, 0, 0)),
          child: Checkbox(
              value: isRememberMe,
              checkColor: Color.fromARGB(255, 255, 255, 255),
              activeColor: Color.fromARGB(255, 0, 0, 0),
              onChanged: ((value) {
                setState(() {
                  isRememberMe = value!;
                });
              })),
        ),
        Text('Remember me',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)))
      ]),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print(''),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(
          'SIGN IN',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget buildSignupBtn() {
    var textSpan = TextSpan(children: [
      TextSpan(
          text: 'Not a member?',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 13,
          )),
      TextSpan(
        text: 'SIGNUP',
        style: TextStyle(
          color: Color.fromARGB(255, 71, 117, 255),
          fontSize: 13,
        ),
      ),
    ]);
    return GestureDetector(
      onTap: () => print(''),
      child: RichText(
        text: textSpan,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 120,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 50),
                            buildEmail(),
                            SizedBox(height: 50),
                            buildPassword(),
                            SizedBox(height: 30),
                            buildForgetpass(),
                            buildRememberme(),
                            buildLoginBtn(),
                            buildSignupBtn(),
                          ],
                        ),
                      ))
                ],
              )),
        ));
  }
}
class _textFieldOTP extends StatelessWidget {
  final bool first;
  final bool last;
  const _textFieldOTP({super.key, required this.first, required this.last});

  @override
  Widget build(BuildContext context) {
    var container = Container(
      
      height: 60,
      width: 45,
      
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          
          style: TextStyle(fontSize: 20,),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0Xff12734C)),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
    return container;

  }
}
