import 'package:flutter/material.dart';
import 'package:skardu_app/common/styles/spacing_style.dart';
import 'package:skardu_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:skardu_app/utils/constants/sizes.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/skd_form_divider.dart';
import '../../../../common/widgets/skd_social_button.dart';
import 'widgets/skd_login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final dark = SkdHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SkdSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title and subTitle
              SkdLoginHeader(dark: dark),

              ///Form
              SkdLoginForm(dark: dark),

              ///Divider
              SkdFormDivider(
                dividerText: SkdStrings.orSignInWith,
              ),

              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///Footer
              SkdSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
