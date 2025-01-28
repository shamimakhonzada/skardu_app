import 'package:flutter/material.dart';

import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../utils/constants/image_strings.dart';

class SkdHomeCategories extends StatelessWidget {
  const SkdHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 12,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return SkdVerticalImageText(
              image: SkdImage.shoeIcon,
              title: "Shoes ",
              onTap: () {},
            );
          }),
    );
  }
}
