import 'package:flutter/material.dart';
import 'package:test/search_bar024.dart';
import 'package:test/user_enters.dart';

import 'Profile_View.dart';
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
          Positioned(
            top: 60,
            right: 60,
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Saved_View()),
                );
              },
              child: Icon(
                Icons.library_music_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25,),
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
                ),
                Expanded(child: SizedBox(height: 20)),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(139, 139, 23, 1),
                        border: Border.all(
                          color: Colors.white,

                        )
                      ),
                      child: Image.asset('assets/images/img.png', )
                  ),
                ),
                Expanded(child: SizedBox(height: 20)),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400
                      ),
                      color: Color.fromRGBO(139, 139, 23, 1),
                    ),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => search_bar024()
                              )
                          );
                        },
                        child: Icon(
                          Icons.search,
                          color: Color.fromRGBO(255, 254, 2, 1),
                        )
                    )
                  ),
                ),
                SizedBox(height: 150,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}