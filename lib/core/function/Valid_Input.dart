import 'package:get/get.dart';

ValidInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not valid Username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not valid MAil";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not valid Number";
    }
  }

  if (val.isEmpty) {
    return "Can't be Empty";
  }
  if (val.length < min) {
    return "Can't be less than $min";
  }

  if (val.length > max) {
    return "Can't be larger than $max";
  }
}
