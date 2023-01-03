import 'package:flutter/material.dart';

class PassWordButtons extends StatelessWidget {
  final Function() enter;
  final Function() forgot;

  const PassWordButtons({
    Key? key,
    required this.enter,
    required this.forgot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.012),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: enter,
            child: Text(
              'Entrar',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: size.height * 0.032,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.09,
          ),
          InkWell(
            onTap: enter,
            child: Text(
              'Esqueceu a senha ?',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: size.height * 0.026,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
