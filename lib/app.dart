import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/bindings/general_bindings.dart';
import 'package:myapp/features/authentication/screens/onboarding/onboarding.dart';
import 'package:myapp/util/constants/colors.dart';
import 'package:myapp/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      themeMode: ThemeMode.system,
      theme: HAppTheme.lightTheme,
      darkTheme: HAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // home: const OnboardingScreen(),
      home: const Scaffold(
        backgroundColor: HColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
