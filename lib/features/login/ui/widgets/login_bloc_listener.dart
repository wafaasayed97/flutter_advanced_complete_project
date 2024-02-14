import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/helpers/extensions.dart';
import 'package:flutter_advanced_complete_project/core/routing/routes.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_advanced_complete_project/core/theming/styles.dart';
import 'package:flutter_advanced_complete_project/features/login/logic/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) => Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.mainBlue,
                      ),
                    ));
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(loginResponse.message),
              ),
            );
          },
          error: (error) {
            setUpErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) =>  AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
          content: Text(error,style: TextStyles.font15DarkBlueMedium,),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it',style: TextStyles.font14BlueSemiBold,))
          ],
            )
    );
  }
}
