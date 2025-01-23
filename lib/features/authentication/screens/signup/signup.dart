import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/widgets/skd_form_divider.dart';
import 'package:skardu_app/features/authentication/screens/signup/verify_email.dart';
import 'package:skardu_app/utils/constants/sizes.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/skd_social_button.dart';
import '../../../../utils/constants/color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final bool dark = SkdHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                SkdStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///signUp Form
              Form(
                child: Column(
                  children: [
                    ///firstName and lastName
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: SkdStrings.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        SizedBox(
                          width: SkdSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: SkdStrings.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwInputFields,
                    ),

                    ///userName
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          labelText: SkdStrings.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwInputFields,
                    ),

                    ///Email
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      expands: false,
                      decoration: InputDecoration(
                          labelText: SkdStrings.email,
                          prefixIcon: Icon(Iconsax.direct)),
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwInputFields,
                    ),

                    ///Phone Number
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      expands: false,
                      decoration: InputDecoration(
                          labelText: SkdStrings.phoneNumber,
                          prefixIcon: Icon(Iconsax.call)),
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwInputFields,
                    ),

                    ///Password
                    TextFormField(
                      obscureText: !isVisible,
                      expands: false,
                      decoration: InputDecoration(
                          labelText: SkdStrings.password,
                          prefixIcon: Icon(
                            Iconsax.password_check,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                                isVisible ? Iconsax.eye : Iconsax.eye_slash),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                          )),
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwSections,
                    ),

                    ///Terms&Condition CheckBox
                    Row(
                      children: [
                        SizedBox(
                            width: SkdSizes.lg,
                            height: SkdSizes.lg,
                            child:
                                Checkbox(value: true, onChanged: (value) {})),
                        SizedBox(
                          width: SkdSizes.spaceBtwItems,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "${SkdStrings.iAgreeTo} ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "${SkdStrings.privacyPolicy} ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color: dark
                                        ? SkdColors.white
                                        : SkdColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? SkdColors.white
                                        : SkdColors.primary),
                          ),
                          TextSpan(
                            text: "${SkdStrings.and} ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: SkdStrings.termsOfUse,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color: dark
                                        ? SkdColors.white
                                        : SkdColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? SkdColors.white
                                        : SkdColors.primary),
                          ),
                        ]))
                      ],
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwSections,
                    ),

                    ///SignUp Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => VerifyEmailScreen()),
                          child: Text(SkdStrings.createAccount)),
                    ),
                    SizedBox(
                      height: SkdSizes.spaceBtwSections,
                    ),
                  ],
                ),
              ),

              ///Divider
              SkdFormDivider(dividerText: SkdStrings.orSignInWith.capitalize!),
              SizedBox(
                height: SkdSizes.spaceBtwSections,
              ),

              ///Social Icon
              SkdSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
