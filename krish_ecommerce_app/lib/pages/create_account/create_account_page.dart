import 'package:flutter/material.dart';
import 'package:krish_ecommerce_app/consts.dart';
import 'package:krish_ecommerce_app/pages/create_account/post_account_creation.dart';
import 'package:krish_ecommerce_app/pages/login/log_in_password.dart';
import 'package:krish_ecommerce_app/pages/login/password_reset.dart';
import 'package:krish_ecommerce_app/widgets/log_in_form_field.dart';
import 'package:krish_ecommerce_app/widgets/primary_button.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

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
                'Create Account',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              LogInFormField(
                hintText: 'First Name',
                validationRegExp: NAME_VALIDATION_REGEX,
                onSaved: (String? value) {},
              ),
              const SizedBox(height: 20),
              LogInFormField(
                hintText: 'Last Name',
                validationRegExp: NAME_VALIDATION_REGEX,
                onSaved: (String? value) {},
              ),
              const SizedBox(height: 20),
              LogInFormField(
                hintText: 'Email Address',
                validationRegExp: EMAIL_VALIDATION_REGEX,
                onSaved: (String? value) {},
              ),
              const SizedBox(height: 20),
              LogInFormField(
                hintText: 'Password',
                validationRegExp: PASSWORD_VALIDATION_REGEX,
                onSaved: (String? value) {},
                obscureText: true,
              ),
              const SizedBox(height: 8),
              PrimaryButton(
                text: 'Continue',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => const PostAccountCreation()),
                  );
                },
              ),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Text('Forgot Password? ', style: Theme.of(context).textTheme.bodySmall),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PasswordResetSplash()));
                    },
                    child: Text('Reset', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          )),
        ),
      )),
    );
  }
}
