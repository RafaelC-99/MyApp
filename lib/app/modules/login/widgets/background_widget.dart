import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/jpg/background-login.jpg',
          ),
        ),
      ),
    );
  }
}
