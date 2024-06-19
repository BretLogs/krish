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
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 80),
              Text(
                'Sign in',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              LogInFormField(
                hintText: 'Email Address',
                validationRegExp: EMAIL_VALIDATION_REGEX,
                onSaved: (String? value) {},
              ),
              const SizedBox(height: 8),
              const PrimaryButton(text: 'Continue'),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Text("Don't have an Account? ", style: Theme.of(context).textTheme.bodySmall),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Create One', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              _logInOptions()
            ],
          )),
        ),
      )),
    );
  }

  Widget _logInOptions() {
    return const Column(
      children: <Widget>[
        ContinueLogInButton(icon: Buttons.email),
        ContinueLogInButton(icon: Buttons.apple),
        ContinueLogInButton(icon: Buttons.facebook),
      ],
    );
  }
}
