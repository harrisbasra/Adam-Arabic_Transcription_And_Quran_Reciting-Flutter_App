import 'package:flutter/material.dart';

import 'SettingsPage.dart';

class QuranLandPage extends StatefulWidget {
  @override
  _QuranLandPageState createState() => _QuranLandPageState();
}

class _QuranLandPageState extends State<QuranLandPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60,
            right: 20,
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25,),
                    child: InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_View()));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        radius: 25,
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
                      child: Text.rich(
                        TextSpan(
                          text: 'Hello, \n',
                          style: TextStyle(fontFamily: 'UberMove',
                            fontSize: 30,
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'username',
                              style: TextStyle(fontFamily: 'UberMove',
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // Adjust this height as needed
                Expanded(child: SizedBox(height: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 40, // Adjust size as needed
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade700,
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade700,
                          child: Icon(
                            Icons.bookmark,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 90, // Adjust size as needed
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.white,
                          width: 4
                        ),
                        gradient: RadialGradient(
                          colors: [Colors.yellow, Colors.yellow, Colors.yellow, Colors.white70, Colors.black],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0, top: 10),
                        child: Image.asset('assets/images/microphone.gif', width: 60, height: 60,),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 40, // Adjust size as needed
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade700,
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade700,
                          child: Icon(
                            Icons.search,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: 50,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade400
                      ),
                      color: Colors.black54,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                        Icon(Icons.multitrack_audio, color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
