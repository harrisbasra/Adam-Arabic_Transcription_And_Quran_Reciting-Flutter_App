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
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildNotificationSettingsSection(),
          SizedBox(height: 16.0),
          _buildIntegrationSection(),
          SizedBox(height: 16.0),
          _buildDarkModeSwitch(),
          SizedBox(height: 32.0),
          _buildSaveButton(),
        ],
      ),
    );
  }

  Widget _buildNotificationSettingsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Notification Settings',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        RadioListTile<int>(
          value: 0,
          groupValue: _notificationOption,
          onChanged: (int? value) {  },
          title: Text('Get Phone Notifications'),
        ),
        RadioListTile<int>(
          value: 1,
          groupValue: _notificationOption,
          onChanged: (int? value) {  },
          title: Text('Get Email Notifications'),
        ),
        RadioListTile<int>(
          value: 2,
          groupValue: _notificationOption,
          onChanged: (int? value) {  },
          title: Text('Don\'t receive Notifications'),
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
          'Integration',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Handle the integration button click here
              // e.g., integrate camera functionality
            },
            child: Text('Click here to integrate Camera'),
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
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
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
    return ElevatedButton(
      onPressed: () {
        // Save settings logic goes here
      },
      child: Text('Save'),
    );
  }
}
