import 'package:flutter/material.dart';
import 'package:krish_ecommerce_app/widgets/primary_button.dart';
import 'package:krish_ecommerce_app/widgets/secondary_button.dart';

class PostAccountCreation extends StatelessWidget {
  const PostAccountCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Text('Tell us About yourself'),
            const Text('Who do you shop for?'),
            Row(
              children: <Widget>[
                Expanded(child: PrimaryButton(text: 'Men', onTap: () {})),
                Expanded(child: SecondaryButton(text: 'Women', onTap: () {})),
              ],
            )
          ],
        ),
      ),
    );
  }
}
