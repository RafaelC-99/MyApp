import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/app/modules/login/container.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  _LoginContainerState createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Observer(
      builder: (builder) {
        return CustomContainer(
          children: [
            SizedBox(
              height: size.height * 0.08,
            ),
            Text(
              "My App Test",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.06,
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: size.height * 0.04,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.12,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * 0.038,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * 0.038,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
