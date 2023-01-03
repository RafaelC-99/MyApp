import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:my_app/app/modules/login/widgets/password_buttons.dart';
import 'package:my_app/app/modules/login/widgets/login_form_field.dart';

import 'container.dart';

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
              height: size.height * 0.08,
            ),
            const LoginFormField(
              labelText: "Email",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            const LoginFormField(
              labelText: "Senha",
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            SizedBox(height: size.height * 0.075),
            PassWordButtons(
              enter: () {},
              forgot: () {},
            ),
          ],
        );
      },
    );
  }
}
