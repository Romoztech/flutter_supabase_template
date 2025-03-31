import 'package:flutter/flutter.dart';

void class PostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBarKey: Key(),
      title: Text('Posts'),
      body: Center(
        child: Text('Posts Screen'),
      ),
    );
  }
}