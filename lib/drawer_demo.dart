import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountEmail: Text("abc@gmail.com"),
                accountName: Text("Abc"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: Text("Account"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.info_outline),
              title: Text("About Us"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.share),
              title: Text("Share Us"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.close),
              title: Text("Close"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Welcome"),
        actions: [],
      ),
    );
  }
}
