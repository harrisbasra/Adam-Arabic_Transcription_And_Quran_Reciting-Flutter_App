import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/Party_Land_Page.dart';
import 'package:test/Quran_Land_Page.dart';
import 'package:test/Sign_Up.dart';

class Landing_Page extends StatefulWidget {
  @override
  _Landing_PageState createState() => _Landing_PageState();
}


class _Landing_PageState extends State<Landing_Page> {
  bool _isChecked = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    final usersRef = FirebaseFirestore.instance.collection('users');
    QuerySnapshot snapshot = await usersRef.where('email', isEqualTo: emailController.text).get();

    if (snapshot.docs.isNotEmpty) {
      final user = snapshot.docs[0];
      if (user['password'] == passwordController.text) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuranLandPage()),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Invalid password. Please try again.'),
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
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Email not found.'),
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            //   Colors.black.withOpacity(0.5),
            //   BlendMode.darken,
            // ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SizedBox(height: 20)),
            Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Expanded(child: SizedBox(height: 20)),
            TextField(
              onTap: () {},
              controller: emailController,
              style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Enter Email',
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
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Set the desired height
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onTap: () {},
              controller: passwordController,
              style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
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
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Set the desired height
              ),
            ),

            SizedBox(height: 10),
            Row(
              children: [

                Checkbox(value: _isChecked, onChanged: (bool){
                    _isChecked = true;
                },
                  activeColor: Colors.white,
                 checkColor: Colors.black,
                ),
                Text(
                  "Remember me",
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.white,), // Set text color to white
                ),
                Spacer(),
              ],
            ),
            Expanded(child: SizedBox(height: 20)),
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
                signIn();
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontFamily: 'UberMove',

                  color: Color.fromRGBO(0, 255, 202, 1),
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("or", style: TextStyle(fontFamily: 'UberMove',color: Colors.white, ),),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    "New Here? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 16),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,

                    style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox(height: 20)),

          ],
        ),
      ),
    );
  }
}
