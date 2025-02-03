import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/personalization/screens/profile/profile_screen.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/skd_circular_image.dart';

class SkdUserProfileTile extends StatelessWidget {
  const SkdUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SkdCircularImage(
          image: SkdImage.profile, width: 50, height: 50, padding: 0),
      title: Text(
        "Shamim Shoaib",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: SkdColors.white),
      ),
      subtitle: Text(
        "shamim.akhonzada@gmail.com",
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .apply(color: SkdColors.white),
      ),
      trailing: IconButton(
          onPressed: () => Get.to(() => const ProfileScreen()),
          icon: Icon(
            Iconsax.edit,
            color: SkdColors.white,
          )),
    );
  }
}
