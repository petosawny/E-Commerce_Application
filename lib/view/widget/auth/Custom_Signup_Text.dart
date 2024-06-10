import 'package:flutter/material.dart';

class CustomSignUpOrSignInText extends StatelessWidget {
  final String textOne;

  final String textTwo;

  final void Function() onTap;

  const CustomSignUpOrSignInText(
      {Key? key,
      required this.textOne,
      required this.textTwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            textTwo,
            style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlue[300],
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
