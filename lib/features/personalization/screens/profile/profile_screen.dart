import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/widgets/appbar/appbar.dart';
import 'package:skardu_app/common/widgets/images/skd_circular_image.dart';
import 'package:skardu_app/common/widgets/text/section_heading.dart';
import 'package:skardu_app/features/personalization/screens/profile/widgets/skd_profile_menu.dart';
import 'package:skardu_app/utils/constants/image_strings.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SkdAppBar(title: Text("Profile"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkdSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SkdCircularImage(image: SkdImage.profile),
                    TextButton(
                        onPressed: () {}, child: Text("Change Profile Picture"))
                  ],
                ),
              ),

              ///Details
              SizedBox(height: SkdSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: SkdSizes.spaceBtwItems),
              SkdSectionHeading(
                  title: "Profile Information", showActionButton: false),
              SizedBox(height: SkdSizes.spaceBtwItems),

              SkdProfileMenu(
                  title: 'Name', value: 'Shamim Shoaib', onPressed: () {}),
              SkdProfileMenu(
                  title: 'Username', value: 'sshoaib.14', onPressed: () {}),
              SizedBox(height: SkdSizes.spaceBtwItems),

              Divider(),
              SizedBox(height: SkdSizes.spaceBtwItems),
              SkdSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              SizedBox(height: SkdSizes.spaceBtwItems),
              SkdProfileMenu(
                  title: 'User ID',
                  value: "151214",
                  onPressed: () {},
                  icon: Iconsax.copy),
              SkdProfileMenu(
                  title: 'E-mail',
                  value: "shamim.akhonzada@gmailo.com",
                  onPressed: () {}),
              SkdProfileMenu(
                  title: 'Phone Number',
                  value: "+92-348-9086186",
                  onPressed: () {}),
              SkdProfileMenu(title: 'Gender', value: "Male", onPressed: () {}),
              SkdProfileMenu(
                  title: 'Date of Birth',
                  value: "January 14, 2002",
                  onPressed: () {}),
              Divider(),
              SizedBox(height: SkdSizes.spaceBtwItems),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text("Close Account",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: Colors.red))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
