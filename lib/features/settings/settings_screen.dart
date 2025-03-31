import 'package:flutter/flutter.dart';

void class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBarKey: Key(),
      title: Text('Settings'),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}