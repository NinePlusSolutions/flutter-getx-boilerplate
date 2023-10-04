// ignore_for_file: unnecessary_null_comparison

class Regex {
  static bool isEmail(String email) {
    RegExp regExp = RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  static bool isPassword(String password) {
    // Điều kiện mật khẩu của bạn ở đây, ví dụ:
    // Độ dài ít nhất 8 ký tự, chứa ít nhất một chữ cái viết hoa và một chữ số.
    RegExp regExp = RegExp(r'^.{8,}$');
    return regExp.hasMatch(password);
  }

  static RegExp regExpYoutube = RegExp(
    r'^(http(s)?:\/\/)?((w){3}.)?youtu(be|.be)?(\.com)?\/.+',
    caseSensitive: false,
  );

  static bool isPasswordAtLeast6Characters(String password) {
    return password.length >= 6;
  }

  static bool isPhoneNumber(String username) {
    RegExp regExp = RegExp(r'^.{9,}$');
    return regExp.hasMatch(username);
  }

  static bool isNumericOnly(String input) {
    if (input == null || input.isEmpty) {
      return false;
    }
    return double.tryParse(input) != null || int.tryParse(input) != null;
  }

  static bool containsAtSign(String input) {
    return input.contains('@');
  }
}
