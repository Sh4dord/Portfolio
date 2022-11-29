import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/gradients/gradients_groups/gradients_group_interface.dart';

part 'gradients_groups/main_gradients_group.dart';

abstract class AppGradientsInterface {
  GradientsGroupInterface get mainGradient => _MainGradientsGroup();
}
