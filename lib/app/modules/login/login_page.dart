import 'package:flutter/material.dart';

import 'widgets/background_widget.dart';
import 'widgets/login_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const BackgroundLogin(),
          const LoginContainer(),
        ],
      ),
    );
  }
}
