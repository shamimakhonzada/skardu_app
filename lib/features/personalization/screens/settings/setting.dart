import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/common/widgets/appbar/appbar.dart';
import 'package:skardu_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:skardu_app/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:skardu_app/common/widgets/text/section_heading.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--Header
            SkdPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  SkdAppBar(
                      title: Text("Account",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: SkdColors.white))),
                  SizedBox(height: SkdSizes.spaceBtwSections),

                  ///User Profile Card
                  SkdUserProfileTile(),
                  SizedBox(height: SkdSizes.spaceBtwSections),
                ],
              ),
            ),

            ///--Body
            Padding(
              padding: EdgeInsets.all(SkdSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkdSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: SkdSizes.spaceBtwItems),
                  SkdSettingMenuTile(
                      icon: Iconsax.safe_home,
                      title: "My Addresses",
                      subTitle: "Set shopping address",
                      onTap: () {}),
                  SkdSettingMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: "My Cart",
                      subTitle: "Add, remove products and move to checkout",
                      onTap: () {}),
                  SkdSettingMenuTile(
                      icon: Iconsax.bag_tick,
                      title: "My Orders",
                      subTitle: "In-Progress and completed Orders",
                      onTap: () {}),
                  SkdSettingMenuTile(
                      icon: Iconsax.bank,
                      title: "Bank Account",
                      subTitle: "Withdraw balance to registered bank account",
                      onTap: () {}),
                  SkdSettingMenuTile(
                      icon: Iconsax.discount_shape,
                      title: "My Coupons",
                      subTitle: "List of all discounted coupons",
                      onTap: () {}),
                  SkdSettingMenuTile(
                      icon: Iconsax.notification,
                      title: "Notifications",
                      subTitle: "Set any kind of notifications message",
                      onTap: () {}),
                  SkdSettingMenuTile(
                      icon: Iconsax.security_card,
                      title: "Account Privacy",
                      subTitle: "Manage data usage and connected accounts",
                      onTap: () {}),

                  ///App Setting
                  SizedBox(height: SkdSizes.spaceBtwSections),
                  SkdSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  SizedBox(height: SkdSizes.spaceBtwItems),
                  SkdSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),
                  SkdSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geo Location',
                    subTitle: 'Set recommendation based on your location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SkdSettingMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result in safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  SkdSettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),

                  ///Logout Button
                  SizedBox(height: SkdSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child:
                        OutlinedButton(onPressed: () {}, child: Text("Logout")),
                  ),
                  SizedBox(height: SkdSizes.spaceBtwSections * 2.5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
