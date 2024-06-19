import 'package:flutter/material.dart';
import 'package:krish_ecommerce_app/pages/login/login_page.dart';
import 'package:krish_ecommerce_app/widgets/primary_button.dart';

class PasswordResetSplash extends StatelessWidget {
  const PasswordResetSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/reset_password_icon.png'),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'We Sent you an Email to reset your password',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * .2),
              child: PrimaryButton(
                  text: 'Return to Login',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const LogInPage();
                    }));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
