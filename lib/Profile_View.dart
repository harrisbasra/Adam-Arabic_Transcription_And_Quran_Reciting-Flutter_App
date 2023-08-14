import 'package:flutter/material.dart';
import 'package:test/Edit_Profile.dart';

class Profile_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Image.asset(
        'assets/images/shave_background.png', // Background image path
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_View()));
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/user.png'),
                          radius: 25,
                        ),
                      ),
                    ),
                    Padding(
                  padding: const EdgeInsets.only(left: 5, right: 25),
                  child: Text.rich(
                    TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(fontFamily: 'UberMove',
                        fontSize: 25,
                        color: Color.fromRGBO(10, 78, 105, 1),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\nMicheal',
                          style: TextStyle(fontFamily: 'UberMove',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox(width: 10,)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          SizedBox(width: 5),
                          Text(
                            "4.2",
                            style: TextStyle(fontFamily: 'UberMove',color: Colors.amber, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "250 Ratings",
                      style: TextStyle(fontFamily: 'UberMove',
                        color: Color.fromRGBO(10, 77, 104, 1.0),
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Edit_Profile()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromRGBO(10, 77, 104, 1), width: 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit, color: Color.fromRGBO(10, 77, 104, 1)),
                              SizedBox(width: 5),
                              Text(
                                "Edit Profile",
                                style: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(10, 77, 104, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),],),
                 Expanded(child: SizedBox(width: 10,)),
                ],
          ),
              ),
            ),


            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.email_outlined, color: Color.fromRGBO(10, 77, 104, 1.0)),
                  SizedBox(width: 10),
                  Text(
                    "\tEmail",
                    style: TextStyle(fontFamily: 'UberMove',
                      color: Color.fromRGBO(10, 77, 104, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "example@example.com",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.phone_iphone, color: Color.fromRGBO(10, 77, 104, 1.0)),
                  SizedBox(width: 10),
                  Text(
                    "\tPhone Number",
                    style: TextStyle(fontFamily: 'UberMove',
                      color: Color.fromRGBO(10, 77, 104, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "65465465461",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(children: [
              Column(children: [Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(fontFamily: 'UberMove',
                        color: Color.fromRGBO(10, 77, 104, 1.0),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "30",
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
              ),

              
              SizedBox(width: 70),

              Column(
                children: [Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(fontFamily: 'UberMove',
                        color: Color.fromRGBO(10, 77, 104, 1.0),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Male",
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontSize: 20),
                  ),
                ),],),
            ],),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.location_searching_rounded, color: Color.fromRGBO(10, 77, 104, 1.0)),
                  SizedBox(width: 10),
                  Text(
                    "Address",
                    style: TextStyle(fontFamily: 'UberMove',
                      color: Color.fromRGBO(10, 77, 104, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Flexible(
                  child: Text(
                    "4517 Washington Ave. Manchester, Kentucky 39495",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.drive_eta, color: Color.fromRGBO(10, 77, 104, 1.0)),
                  SizedBox(width: 10),
                  Text(
                    "Type of Car",
                    style: TextStyle(fontFamily: 'UberMove',
                      color: Color.fromRGBO(10, 77, 104, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Luxury Sedan",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Expanded(flex: 2, child: SizedBox(height: 10)),

          ],
        ),
      ),
    ],
      ),
    );
  }
}
