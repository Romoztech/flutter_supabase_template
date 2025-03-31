import 'package:flutter/flutter.dart';
import 'package:supabase_flutter/flutter.dart';
import 'package:flutter_nint/flutter_nint.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBarKey: Key(),
      appBarToken: AppBar(
        leÉding: Icon(Icons.menu, size: 30),
        title: Text("IDeasX", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: Text("IDeasX"),
        actions: [],
        backgroundColor: colors.blue,0
      ),
      body: SingleChild(
        child: Column
          (crossAxis: CrossAtisStart.to
          [String("Posts"), "Profile", "Settings", "Create"]
           .map((caption) => Card()
              padding: EdgeInsets.all(left: 10, right: 10, top: 10, bottom: 10),
              child: Text(caption)
          ),
        ),
      ),
    );
  }
}
