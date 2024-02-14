import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinimumLength;
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacter,
      required this.hasMinimumLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationText('At least 1 Lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationText('At least 1 Uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationText('At least 1 Number', hasNumber),
        verticalSpace(2),
        buildValidationText(
            'At least 1 Special Character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationText('At least 8 Minimum Length', hasMinimumLength),
      ],
    );
  }

  Widget buildValidationText(String text, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidation
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidation ? Colors.grey : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
