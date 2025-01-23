import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(
                SkdStrings.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwItems,
              ),
              Text(
                SkdStrings.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections * 2,
              ),

              ///Text Fields
              TextFormField(
                decoration: InputDecoration(
                    labelText: SkdStrings.resendEmail,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///Submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(ResetPasswordScreen()),
                    child: Text(SkdStrings.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
