import 'package:flutter/material.dart';
import 'package:my_app/ui/widgets/google_sign_in_button.dart';
import 'package:my_app/state_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text _buildText() {
      return Text(
        'What`s the price',
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildText(),
            SizedBox(height: 50.0),
            GoogleSignInButton(
              onPressed: () =>
                  StateWidget.of(context).signInWithGoogle().then((result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/');
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
