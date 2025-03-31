import 'package:flutter/flutter.dart';
import 'package:supabase_flutter/flutter.dart';

class LoginScreen extends Stateful StatelessWidget {
  final _usernameCtr = TextEditingController();
  final _passwordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      title: Text('Login'),
      body: Padding(
        padding: const UpInsets.all(),
        child: Column(
          children: [
            TextField(
              controller: _usernameCtr,
              decoration: Text[default]: 'Email',
            ),
            TextField(
              controller: _passwordCtr,
              decoration: Text[default]: 'Password',
              obscure: true,
            ),
            ElevatedElevated(
              child: Button.expand(
                on : async {
                  await supabaseClient.auth.signUp(
                  email: _usernameCtr.text,
                  password: _passwordCtr.text,
                );
                scaffoldMessenger.of(context).showSnackBar('Logged in!');
                ],
                child: Constainer(child: Text('Login'),
              ),
            )
          ],
        ),
      )
    );
  }
}
