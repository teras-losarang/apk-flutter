import 'package:flutter/material.dart';
import 'package:myapp/common/styles/spacing_styles.dart';
import 'package:myapp/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:myapp/features/authentication/screens/register/widgets/register_form.dart';
import 'package:myapp/features/authentication/screens/register/widgets/register_header.dart';
import 'package:myapp/util/helpers/helper_functions.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HRegisterHeader(),
              HRegisterForm(dark: dark),
              HFormDivider(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}
