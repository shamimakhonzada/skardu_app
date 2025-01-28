import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class SkdLoginForm extends StatefulWidget {
  final bool dark;

  const SkdLoginForm({required this.dark, super.key});

  @override
  State<SkdLoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SkdLoginForm> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: SkdSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: SkdStrings.email,
              ),
            ),
            SizedBox(
              height: SkdSizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              obscureText: !isVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  icon: Icon(
                    isVisible ? Iconsax.eye : Iconsax.eye_slash,
                  ),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                labelText: SkdStrings.password,
              ),
            ),
            SizedBox(
              height: SkdSizes.spaceBtwInputFields / 2,
            ),

            /// Remember Me and Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(SkdStrings.rememberMe),
                  ],
                ),
                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(ForgetPasswordScreen()),
                  child: Text(SkdStrings.forgotPassword),
                ),
              ],
            ),
            SizedBox(
              height: SkdSizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.to(NavigationMenu()),
                child: Text(SkdStrings.signIn),
              ),
            ),
            SizedBox(
              height: SkdSizes.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(SignUpScreen()),
                child: Text(SkdStrings.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
