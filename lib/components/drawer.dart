import 'package:flutter/material.dart';
import 'package:internship_project/components/about.dart';
import 'package:internship_project/components/drawerTile.dart';
import 'package:internship_project/components/privacyPolicy.dart';
import 'package:internship_project/components/profilePage.dart';
import 'package:internship_project/components/sendFeed.dart';
import 'package:internship_project/components/settingpage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[250],
      child: Column(
        children: [
          //Header
          const SizedBox(
            height: 150,
          ),
          Text(
            'H O S P I T A L',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          Icon(
            Icons.local_hospital_rounded,
            size: 150,
            color: Colors.red,
          ),
          //Profile
          DrawerTile(
            icon: Icons.person,
            name: 'P R O F I L E',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      FullName: '',
                      email: '',
                    ),
                  ));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          //Settings
          DrawerTile(
            icon: Icons.settings,
            name: 'S E T T I N G S',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          //About
          DrawerTile(
            icon: Icons.verified,
            name: 'A B O U T ',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ));
            },
          ),
          //Logout

          //Share
          const SizedBox(
            height: 15,
          ),

          DrawerTile(
            icon: Icons.share,
            name: 'S H A R E',
            onPressed: () {},
          ),
          const SizedBox(
            height: 15,
          ),

          //Send a FeedBack

          DrawerTile(
            icon: Icons.emoji_emotions,
            name: 'S E N D  F E E D B A C K',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeedBack(),
                  ));
            },
          ),

          const SizedBox(
            height: 15,
          ),

          DrawerTile(
            icon: Icons.build,
            name: 'P R I V A C Y  P O L I C Y',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicy(),
                  ));
            },
          ),

          const SizedBox(
            height: 15,
          ),

          DrawerTile(
            icon: Icons.logout,
            name: 'L O G O U T',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
