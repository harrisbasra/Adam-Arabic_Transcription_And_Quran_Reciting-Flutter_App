import 'package:flutter/material.dart';
import 'package:test/Party_Land_Page.dart';
import 'package:test/Sign_Up.dart';


class Landing_Page extends StatelessWidget {
  bool _isChecked = true;
  bool _selectedLanguage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60,),
            Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              onTap: () {},
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
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white), // Set text color to white
                  ),
                  child: Text("Forgot Password?", style: TextStyle(fontFamily: 'UberMove',),),
                ),
              ],
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/google.png", height: 30, width: 30,),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Language",
                style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Radio<bool>(
                  value: false,
                  groupValue: _selectedLanguage,
                  onChanged: (bool? value) {

                  },
                  activeColor: Color.fromRGBO(10, 77, 204, 1),
                ),
                Text("German", style: TextStyle(fontFamily: 'UberMove',color: Colors.white),),
                Spacer(),
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 0.9),
                      width: 2,
                    ),
                  ),
                  child: Radio<bool>(
                    value: true,
                    groupValue: _selectedLanguage,
                    onChanged: (bool? value) {

                    },
                    activeColor: Color.fromRGBO(10, 77, 104, 1),
                  ),
                ),
                SizedBox(width: 2,),
                Text("English", style: TextStyle(fontFamily: 'UberMove',color: Colors.white),),
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

          ],
        ),
      ),
    );
  }
}
