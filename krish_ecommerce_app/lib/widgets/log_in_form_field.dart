import 'package:flutter/material.dart';

class LogInFormField extends StatelessWidget {
  const LogInFormField({
    super.key,
    required this.hintText,
    required this.validationRegExp,
    this.obscureText = false,
    required this.onSaved,
  });
  final String hintText;
  final RegExp validationRegExp;
  final bool obscureText;
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      obscureText: obscureText,
      validator: (String? value) {
        if (value != null && validationRegExp.hasMatch(value)) {
          return null;
        }
        return 'Enter a valid ${hintText.toLowerCase()}';
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        fillColor: Theme.of(context).colorScheme.onBackground,
        filled: true,
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.black38,
            ),
      ),
    );
  }
}
