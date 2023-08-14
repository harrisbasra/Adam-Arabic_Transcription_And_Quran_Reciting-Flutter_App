import 'package:flutter/material.dart';



class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkMode = false;
  int _notificationOption = 0;

  void _handleNotificationOptionChange(int value) {
    setState(() {
      _notificationOption = value;
    });
  }

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black,Colors.black,Colors.black,Colors.black,],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
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
                        'Settings',
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
        color: Colors.black,
        child: Column(
          children: [
            Divider(color: Colors.white,),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildNotificationSettingsSection(),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildIntegrationSection(),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildDarkModeSwitch(),
            ),
            Expanded(child: SizedBox(height: 32.0)),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildSaveButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationSettingsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Notification Settings',
          style: TextStyle(fontFamily: 'UberMove',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        SizedBox(height: 8.0),
        RadioListTile<int>(
          value: 0,
          groupValue: _notificationOption,
          onChanged: (int? value) {  },

          title: Text('Get Phone Notifications', style: TextStyle(color: Colors.white),),
        ),
        RadioListTile<int>(
          value: 1,
          groupValue: _notificationOption,
          onChanged: (int? value) {  },
          title: Text('Get Email Notifications', style: TextStyle(color: Colors.white),),
        ),
        RadioListTile<int>(
          value: 2,
          groupValue: _notificationOption,
          onChanged: (int? value) {  },
          title: Text('Don\'t receive Notifications', style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }

  Widget _buildIntegrationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text(
          'Subscribe To Content',
          style: TextStyle(fontFamily: 'UberMove',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        SizedBox(height: 20),
        Center(
          child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(10, 77, 104, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              minimumSize: Size(double.infinity, 45),
            ),
            onPressed: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => QuranLandPage()),
              // );
            },
            child: Text(
              'Click Here to View Paid Content',
              style: TextStyle(fontFamily: 'UberMove',
                color: Color.fromRGBO(0, 255, 202, 1),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDarkModeSwitch() {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dark Mode',
              style: TextStyle(fontFamily: 'UberMove',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            Switch(
              value: _isDarkMode,
              onChanged: _toggleDarkMode,
            ),
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }

  Widget _buildSaveButton() {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20, bottom: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(10, 77, 104, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          minimumSize: Size(double.infinity, 45),
        ),
        onPressed: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => QuranLandPage()),
          // );
        },
        child: Text(
          'Save Settings',
          style: TextStyle(fontFamily: 'UberMove',
            color: Color.fromRGBO(0, 255, 202, 1),
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
