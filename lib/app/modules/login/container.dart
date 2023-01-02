import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final List<Widget> children;

  const CustomContainer({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        height: size.height * 0.8,
        width: size.width * 0.35,
        decoration: const BoxDecoration(
          color: Color.fromARGB(83, 24, 50, 201),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
