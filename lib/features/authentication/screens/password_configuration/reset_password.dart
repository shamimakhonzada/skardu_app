import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skardu_app/features/authentication/screens/login/login.dart';
import 'package:skardu_app/utils/constants/sizes.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.off(LoginScreen()),
            icon: Icon(Icons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            children: [
              ///images

              Image(
                height: SkdHelperFunction.screenHeight() * 0.2,
                width: SkdHelperFunction.screenWidth(),
                image: AssetImage('assets/images/passwordL.png'),
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///Title and subTitle

              Text(
                SkdStrings.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwItems,
              ),
              Text(
                SkdStrings.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(SkdStrings.done),
                ),
              ),
              SizedBox(
                height: SkdSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(SkdStrings.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
