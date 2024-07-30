import 'package:flutter/material.dart';
import 'package:internship_project/components/tileSetting.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Column(
          children: [
            AppBar(
              title: Text(
                'Settings ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.blue,
            ),
            const SizedBox(
              height: 30,
            ),
            SettingsTile(
              Icons: Icons.delete,
              tiles: 'Clear Local Storage',
            ),
            SettingsTile(
                Icons: Icons.notification_add_outlined, tiles: 'Notification'),
            SettingsTile(Icons: Icons.help, tiles: 'Get Help'),
          ],
        ),
      ),
    );
  }
}
