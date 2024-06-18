import 'package:flutter/material.dart';
import 'package:krish_ecommerce_app/consts.dart';
import 'package:krish_ecommerce_app/widgets/continue_log_in_button.dart';
import 'package:krish_ecommerce_app/widgets/primary_button.dart';
import 'package:krish_ecommerce_app/widgets/log_in_form_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            child: Column(
          children: <Widget>[
            const Text('Sign In'),
            LogInFormField(
              hintText: 'Email Address',
              height: MediaQuery.sizeOf(context).height * .1,
              validationRegExp: EMAIL_VALIDATION_REGEX,
              onSaved: (String? value) {},
            ),
            const PrimaryButton(),
            const Row(
              children: <Widget>[
                Text("Don't have an Account? "),
                Text('Create One'),
              ],
            ),
            const ContinueLogInButton(icon: Buttons.apple),
            const ContinueLogInButton(icon: Buttons.email),
            const ContinueLogInButton(icon: Buttons.facebook),
          ],
        )),
      )),
    );
  }
}
