import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_complete_project/core/shared_widgets/app_text_button.dart';
import 'package:flutter_advanced_complete_project/core/shared_widgets/app_text_form_field.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../terms_and_condition_text.dart';
import '../widgets/already_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: 'Email'),
                        verticalSpace(8),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscure: isObscure,
                          suffixIcon: GestureDetector(
                              onTap: () =>
                                  setState(() => isObscure = !isObscure),
                              child: Icon(isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                        ),
                        verticalSpace(24),
                        Align(alignment: AlignmentDirectional.centerEnd,
                            child: Text('forgot password?',style:TextStyles.font13BlueRegular ,),),
                        verticalSpace(40),
                        AppTextButton(textStyle: TextStyles.font16WhiteSemiBold, onPressed: (){}, buttonText: 'Login'),
                        verticalSpace(16),
                        const TermsAndConditionsText(),
                        verticalSpace(60),
                        const AlreadyHaveAnAccountText(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
