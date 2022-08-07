import 'package:portfolio/common/utils/redirection/redirection.dart';

class NavigationItem {
  final String title;
  final Redirection redirection;

  const NavigationItem({
    required this.title,
    required this.redirection,
  });
}
