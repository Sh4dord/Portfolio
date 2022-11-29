import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/theme/assets/assets.theme.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    this.size = 50,
    Key? key,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradients.mainGradient.gradientColors,
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: CircleAvatar(
          foregroundImage: Image.asset(AssetsTheme.profilePicture).image,
          maxRadius: (size * 0.95) / 2,
        ),
      ),
    );
  }
}
