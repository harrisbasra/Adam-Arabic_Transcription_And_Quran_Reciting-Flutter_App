import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/Landing%20Page.dart';
import 'package:test/Quran_Land_Page.dart';

import 'Party_Land_Page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {

  // Controllers for text fields
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String selectedGender = 'Male'; // Default gender

  // Function to add user data to Firestore
  void addUserToFirestore() async {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        ageController.text.isEmpty ||
        emailController.text.isEmpty ||
        passController.text.isEmpty
    ) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please fill in all the fields.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      await FirebaseFirestore.instance.collection('users').add({
        'first_name': firstNameController.text,
        'last_name': lastNameController.text,
        'phone_number': phoneNumberController.text,
        'gender': selectedGender,
        'age': ageController.text,
        'email': emailController.text,
        'password' : passController.text
      });

      // Navigate to another page or perform any other action
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Landing_Page()),
      );
    }
  }

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
            // colorFilter: ColorFilter.mode(
            //   Colors.black.withOpacity(0.5),
            //   BlendMode.darken,
            // ),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SizedBox(height: 10,)),
            Text(
              'SIGN UP',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'UberMove',fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Expanded(child: SizedBox(height: 10,)),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onTap: () {},
                    controller: firstNameController,
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
                    controller: lastNameController,
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
            TextField(
              onTap: () {},
              controller: phoneNumberController,
              style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
              keyboardType: TextInputType.numberWithOptions(signed: true),
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
                    items: ['Male', 'Female', 'Non-Binary', 'Prefer Not', 'Other']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(fontFamily: 'UberMove',color: Colors.black)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {selectedGender = newValue.toString();},
                  ),
                ),

                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onTap: () {},
                    controller: ageController,
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
            SizedBox(height: 10),
            TextField(
              onTap: () {},
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
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
            SizedBox(height: 10,),
            TextField(
              onTap: () {},
              controller: passController,
              obscureText: true,
              style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Password',
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
            Expanded(child: SizedBox(height: 10,)),
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
                addUserToFirestore();
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
            Expanded(child: SizedBox(height: 50,))
          ],
        ),
      ),
    );
  }
}
