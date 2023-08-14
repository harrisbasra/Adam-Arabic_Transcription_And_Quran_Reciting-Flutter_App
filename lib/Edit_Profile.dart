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
            gradient: LinearGradient(
              colors: [Color.fromRGBO(10, 77, 104, 1),Color.fromRGBO(10, 77, 104, 1),Color.fromRGBO(10, 77, 104, 1), Color.fromRGBO(9, 129, 148, 1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/shave_background.png'), // Background image
            fit: BoxFit.cover,
          ),
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
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Text("First Name", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(10, 77, 104, 1)),),
                    Expanded(child: SizedBox(width: 10,)),
                    Text("Last Name", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(10, 77, 104, 1)),),
                    Expanded(child: SizedBox(width: 10,)),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: () {},
                        style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          labelStyle:
                          TextStyle(color: Color.fromRGBO(8, 131, 149, 1)),
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
                          labelText: 'Last Name',
                          labelStyle:
                          TextStyle(color: Color.fromRGBO(8, 131, 149, 1)),
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
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Phone Number",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1))
                      ,)
                ),

                TextField(
                  onTap: () {},
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
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
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Email",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1))
                      ,)
                ),

                TextField(
                  onTap: () {},
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
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
                    Text("Gender", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(10, 77, 104, 1)),),
                    Expanded(child: SizedBox(width: 10,)),
                    Text("Age", style: TextStyle(fontFamily: 'UberMove',fontSize: 15, fontWeight: FontWeight.w600,color: Color.fromRGBO(10, 77, 104, 1)),),
                    Expanded(child: SizedBox(width: 10,)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          labelStyle:
                          TextStyle(color: Color.fromRGBO(8, 131, 149, 1)),
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
                          labelText: 'Age',
                          labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
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
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Address",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1))
                      ,)
                ),

                TextField(
                  onTap: () {},
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
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
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Upload ID Card",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1))
                      ,)
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: () {},
                        style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                        decoration: InputDecoration(
                          labelText: 'Upload ID Card',
                          labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
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
                          suffixIcon: Icon(Icons.image),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Align(alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Select Car Type",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1))
                      ,)
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Select Car Type',
                    labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
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
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(fontFamily: 'UberMove',
                      color: Color.fromRGBO(0, 255, 202, 1),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
