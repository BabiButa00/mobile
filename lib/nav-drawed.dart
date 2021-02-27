import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.home_outlined,
              text: 'DASHBOARD',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.call_end_outlined,
              text: 'HOTLINE',
              onTap: () => print('Tap My Files')),
          _drawerItem(
              icon: Icons.email_outlined,
              text: 'KONTAK',
              onTap: () => print('Tap Shared menu')),
        ],
      ),
    );
  }
}
Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('img/pool.jfif'), fit: BoxFit.cover),
    ),
   
    accountName: Text('Admin'),
   
  );
}
Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}