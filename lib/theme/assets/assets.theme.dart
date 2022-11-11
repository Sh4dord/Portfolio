abstract class AssetsTheme {
  const AssetsTheme();

  static const String _common = 'assets';
  static const String _commonSvg = '$_common/svg';
  static const String _commonPng = '$_common/png';

  /// *************** SNACKBAR **************** ///
  static String snackBarSuccessIcon = '$_commonSvg/snack_bar/snack_bar_success_icon.svg';
  static String snackBarErrorIcon = '$_commonSvg/snack_bar/snack_bar_error_icon.svg';
  static String snackBarInfoIcon = '$_commonSvg/snack_bar/snack_bar_info_icon.svg';
  static String snackBarWarningIcon = '$_commonSvg/snack_bar/snack_bar_warning_icon.svg';

  /// *************** SOCIALS **************** ///
  static String github = '$_commonSvg/social/github_icon.svg';
  static String linkedin = '$_commonSvg/social/linkedin_icon.svg';
  static String twitter = '$_commonSvg/social/twitter_icon.svg';
}
