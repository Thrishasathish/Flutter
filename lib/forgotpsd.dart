import 'package:flutter/material.dart';
class psd extends StatelessWidget {
  const psd({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
                children:[
                  SizedBox(
                    height:50,
                  ),
                 
                  Image.asset('assets/forgot.png'
                ),
                  Column(
                    children: [
                     
                      SizedBox(height: 30,),
                      inputFile(label: "Password", obscureText: true),
                      SizedBox(height: 20,),
                      inputFile(label: "Confirm Password ", obscureText: true),
                    ],
                  ),
                  SizedBox(height: 50,),
                 
                 
                  GestureDetector(
                    onTap: () {},
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
                          "RESET",
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
                    height: 20,
                  ),
                  
                 
                ]),
          ),
        ));
  }
}
// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color:Color(0xff12734C), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color: Color(0xff12734C), width: 1)),
            hintText: "Enter your "+label,
            fillColor: Color(0xff47B5FF),
)),
    ],
  );
}
