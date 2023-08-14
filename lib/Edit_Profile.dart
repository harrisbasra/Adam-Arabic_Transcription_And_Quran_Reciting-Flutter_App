import 'package:flutter/material.dart';

class Edit_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 10,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Edit Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'UberMove', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 40), // Adjust the width as needed
                    ],
                  ),
                  SizedBox(height: 5,)
                ],
              ),
            ),
          ),
        ),
      ),

      body: Container(
        height: 1000,
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: InkWell(
                    onTap: () {

                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 40,
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
                Row(
                  children: [
                    Text("First Name", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(98, 182, 213, 1))),
                    Expanded(child: SizedBox(width: 10,)),
                    Text("Last Name", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(98, 182, 213, 1))),
                    Expanded(child: SizedBox(width: 10,)),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: () {},
                        style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          filled: true,
                          fillColor: Colors.white, // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
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
                          filled: true,
                          fillColor: Colors.white, // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Phone Number",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(98, 182, 213, 1))
                      ,)
                ),
                SizedBox(height: 5.0),
                TextField(
                  onTap: () {},
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    filled: true,
                    fillColor: Colors.white, // Background color
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
                SizedBox(height: 10.0),
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Email",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(98, 182, 213, 1))
                      ,)
                ),
                SizedBox(height: 5.0),
                TextField(
                  onTap: () {},
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white, // Background color
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text("Gender", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(98, 182, 213, 1)),),
                    Expanded(child: SizedBox(width: 10,)),
                    Text("Age", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(98, 182, 213, 1)),),
                    Expanded(child: SizedBox(width: 10,)),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: 'Gender',
                          filled: true,
                          fillColor: Colors.white, // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        style: TextStyle(fontFamily: 'UberMove',color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Age',
                          filled: true,
                          fillColor: Colors.white, // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(10, 77, 104, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              minimumSize: Size(double.infinity, 45),
            ),
            onPressed: () {},
            child: Text(
              'Save',
              style: TextStyle(fontFamily: 'UberMove',
                color: Color.fromRGBO(0, 255, 202, 1),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
