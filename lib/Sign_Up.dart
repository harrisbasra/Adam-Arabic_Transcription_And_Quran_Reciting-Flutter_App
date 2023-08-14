import 'package:flutter/material.dart';
import 'package:test/Landing%20Page.dart';

import 'Party_Land_Page.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text(
                    'SIGN UP',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'UberMove',fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onTap: () {},
                          style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                            filled: true,
                            fillColor: Colors.white, // Background color
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          onTap: () {},
                          style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                            filled: true,
                            fillColor: Colors.white, // Background color
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.0),

                  SizedBox(height: 10.0),
                  TextField(
                    onTap: () {},
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                      filled: true,
                      fillColor: Colors.white, // Background color
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    onTap: () {},
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                      filled: true,
                      fillColor: Colors.white, // Background color
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            hintText: 'Gender',
                            hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                            filled: true,
                            fillColor: Colors.white, // Background color
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                          items: ['Male', 'Female', 'Other']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: TextStyle(fontFamily: 'UberMove',color: Colors.black)),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {},
                        ),
                      ),

                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          onTap: () {},
                          style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Age',
                            hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                            filled: true,
                            fillColor: Colors.white, // Background color
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    onTap: () {},
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Address',
                      hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                      filled: true,
                      fillColor: Colors.white, // Background color
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      suffixIcon: Icon(Icons.location_on),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    onTap: () {},
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Upload ID Card',
                      hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                      filled: true,
                      fillColor: Colors.white, // Background color
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Select Car Type',
                      hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                      filled: true,
                      fillColor: Colors.white, // Background color
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                    items: ['Car Type A', 'Car Type B', 'Car Type C']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(fontFamily: 'UberMove',color: Colors.black)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(10, 77, 104, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      minimumSize: Size(double.infinity, 45),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Party_Land_Page(username: "HarreyBe", userID: "FS",)),
                      );
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontFamily: 'UberMove',
                        color: Color.fromRGBO(0, 255, 202, 1),
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('OR', style: TextStyle(fontFamily: 'UberMove',color: Colors.white),),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/google.png", height: 30, width: 30,),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Landing_Page()),
                          );
                        },
                        child: Text(
                          "Already have an account? ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 16),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Landing_Page()),
                          );
                        },
                        child: Text(
                          "Login Here",
                          textAlign: TextAlign.center,

                          style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
