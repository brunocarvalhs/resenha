import 'package:flutter/material.dart';
import 'package:resenha/app/utils/assets_utils.dart';

class SocialLoginButtonWidget extends StatelessWidget {
  final String icon;
  final String label;
  final Color fontColor;
  final Color background;
  final Color borderColor;
  final VoidCallback? onTap;
  final TextStyle? styleLabel;

  const SocialLoginButtonWidget({
    Key? key,
    required this.label,
    required this.icon,
    required this.fontColor,
    required this.background,
    required this.borderColor,
    this.styleLabel,
    this.onTap,
  }) : super(key: key);

  factory SocialLoginButtonWidget.facebook({
    VoidCallback? onTap,
    required String label,
  }) =>
      SocialLoginButtonWidget(
        icon: facebook,
        label: label,
        fontColor: Color(0xFFDDE3F0),
        background: Color(0xFF3452A7),
        borderColor: Color(0xFFE3E3E3),
        onTap: onTap,
      );

  factory SocialLoginButtonWidget.google({
    VoidCallback? onTap,
    required String label,
    TextStyle? styleLabel,
  }) =>
      SocialLoginButtonWidget(
        icon: google,
        label: label,
        fontColor: Color(0xFF5A5A5A),
        background: Color(0xFFF6F4F5),
        borderColor: Color(0xFF5A5A5A),
        onTap: onTap,
        styleLabel: styleLabel,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 274,
        height: 56,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(
              color: background,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset(icon),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: styleLabel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}