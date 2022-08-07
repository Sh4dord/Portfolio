part of './assets.theme.dart';

class _AssetsSvg with AssetsMixin {
  final String _common = 'assets/img/svg';

  /// *************** SNACKBAR **************** ///
  String get snackBarSuccessIcon => '$_common/snack_bar/snack_bar_success_icon.svg';
  String get snackBarErrorIcon => '$_common/snack_bar/snack_bar_error_icon.svg';
  String get snackBarInfoIcon => '$_common/snack_bar/snack_bar_info_icon.svg';
  String get snackBarWarningIcon => '$_common/snack_bar/snack_bar_warning_icon.svg';

  const _AssetsSvg();
}
