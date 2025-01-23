import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/styles/spacing_style.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/constants/image_strings.dart';
import 'package:skardu_app/utils/constants/sizes.dart';
import 'package:skardu_app/utils/constants/text_strings.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    width: double.infinity,
                    height: 150,
                    image: AssetImage(
                        dark ? SkdImage.lightAppLogo : SkdImage.darkAppLogo),
                  ),
                  Text(
                    SkdStrings.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: SkdSizes.sm,
                  ),
                  Text(
                    SkdStrings.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  //
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: SkdSizes.spaceBtwSections,
                      ),
                      child: Column(
                        children: [
                          ///Email
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.direct_right),
                              labelText: SkdStrings.email,
                            ),
                          ),
                          SizedBox(
                            height: SkdSizes.spaceBteInputFields,
                          ),

                          /// password
                          TextFormField(
                            obscureText: !isVisible,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.password_check),
                              suffixIcon: IconButton(
                                  icon: Icon(isVisible
                                      ? Iconsax.eye
                                      : Iconsax.eye_slash),
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  }),
                              labelText: SkdStrings.password,
                            ),
                          ),
                          SizedBox(
                            height: SkdSizes.spaceBteInputFields / 2,
                          ),

                          ///Remember me and Forgot password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //remember me
                              Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                  Text(SkdStrings.rememberMe)
                                ],
                              ),
                              //Forget password
                              TextButton(
                                onPressed: () {},
                                child: Text(SkdStrings.forgotPassword),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SkdSizes.spaceBtwSections,
                          ),
                          //Sign In Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(SkdStrings.signIn),
                            ),
                          ),
                          SizedBox(
                            height: SkdSizes.spaceBtwItems,
                          ),
                          //Create Account Button
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(SkdStrings.createAccount),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///Divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Divider(
                          color: dark ? SkdColors.darkGrey : SkdColors.grey,
                          thickness: 0.5,
                          indent: 50,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        SkdStrings.orSignInWith.capitalize!,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Flexible(
                        child: Divider(
                          color: dark ? SkdColors.darkGrey : SkdColors.grey,
                          thickness: 0.5,
                          indent: 10,
                          endIndent: 50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SkdSizes.spaceBtwSections,
                  ),

                  ///Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: SkdColors.grey),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                width: SkdSizes.lg,
                                height: SkdSizes.lg,
                                image: AssetImage(SkdImage.facebook))),
                      ),
                      SizedBox(
                        width: SkdSizes.spaceBtwItems,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: SkdColors.grey),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                width: SkdSizes.lg,
                                height: SkdSizes.lg,
                                image: AssetImage(SkdImage.google))),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
