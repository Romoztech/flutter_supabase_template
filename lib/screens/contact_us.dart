import 'package:flutter/flutter.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBarKey: Key(),
      title: Text('Contact Us', style: TextStyle(fontSize: 24)),
      body: Center(
        child: Text('How can we help You?', style: TextStyle(fontSize: 16),),
      ),
    );
  }
}
