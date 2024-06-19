import 'package:flutter/material.dart';
import 'package:krish_ecommerce_app/consts.dart';
import 'package:krish_ecommerce_app/pages/login/log_in_password.dart';
import 'package:krish_ecommerce_app/widgets/log_in_form_field.dart';
import 'package:krish_ecommerce_app/widgets/primary_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                'Forgot Password',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              LogInFormField(
                hintText: 'Enter Email Address',
                validationRegExp: PASSWORD_VALIDATION_REGEX,
                onSaved: (String? value) {},
              ),
              const SizedBox(height: 8),
              PrimaryButton(
                text: 'Continue',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => const LogInPassword()),
                  );
                },
              ),
              const SizedBox(height: 12),
            ],
          )),
        ),
      )),
    );
  }
}
