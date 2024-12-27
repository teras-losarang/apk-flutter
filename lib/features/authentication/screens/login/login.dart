import 'package:flutter/material.dart';
import 'package:myapp/common/styles/spacing_styles.dart';
import 'package:myapp/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:myapp/features/authentication/screens/login/widgets/login_form.dart';
import 'package:myapp/features/authentication/screens/login/widgets/login_header.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              HLoginHeader(dark: dark),
              const HLoginForm(),
              HFormDivider(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}
