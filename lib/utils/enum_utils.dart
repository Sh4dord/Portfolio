class EnumUtils {
  static String enumToString<T>(T enumValue) {
    return enumValue.toString().split('.')[1];
  }

  static U? stringToEnum<U extends Enum>(String? stringValue, List<U> enumValues) {
    if (stringValue == null || stringValue.isEmpty) {
      return null;
    }
    try {
      return enumValues.firstWhere((element) => enumToString(element).toLowerCase() == stringValue.toLowerCase());
    } catch (e) {
      return null;
    }
  }
}
