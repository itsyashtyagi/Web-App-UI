import 'package:flutter/material.dart';
import 'package:web_apps_flutter/utils/colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
