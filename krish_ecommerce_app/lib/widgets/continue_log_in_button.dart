import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_button/sign_in_button.dart';

class ContinueLogInButton extends StatelessWidget {
  const ContinueLogInButton({super.key, required this.icon});
  final Buttons icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SignInButton(
        icon,
        onPressed: () {},
        text: 'Continue with ${icon.name}',
      ),
    );
  }
}
