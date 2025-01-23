import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skardu_app/common/widgets/success_screen/success_screen.dart';
import 'package:skardu_app/features/authentication/screens/login/login.dart';
import 'package:skardu_app/utils/constants/sizes.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../password_configuration/reset_password.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            children: [
              ///Image

              Image(
                height: SkdHelperFunction.screenHeight() * 0.2,
                width: SkdHelperFunction.screenWidth(),
                image: AssetImage('assets/images/mail.png'),
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///Title and subTitle

              Text(
                SkdStrings.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwItems,
              ),
              Text(
                'shamim.akhonzada@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwItems,
              ),
              Text(
                SkdStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => (Get.to(SuccessScreen(
                      image: "assets/images/message.png",
                      title: SkdStrings.yourAccountCreatedTitle,
                      subTitle: SkdStrings.yourAccountCreatedSubTitle,
                      onPressed: () => Get.offAll(() => LoginScreen()),
                    ))),
                    child: Text(SkdStrings.continueText),
                  )),
              SizedBox(height: SkdSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Get.to(""),
                    child: Text(SkdStrings.resendEmail),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
