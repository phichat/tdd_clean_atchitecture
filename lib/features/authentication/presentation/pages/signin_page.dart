import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../bloc/signin/signin_bloc.dart';
import '../widgets/signin_form.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocListener<SigninBloc, SigninState>(
        listener: (BuildContext context, SigninState state) {
          if (state is SigninSuccess) {
            // Navigator.of(context).pushNamedAndRemoveUntil(
            //   Routes.home,
            //   (Route<dynamic> route) => false,
            // );
          } else if (state is SigninFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is SigninLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Loading...'),
                backgroundColor: Colors.green,
              ),
            );
          }
        },
        child: Column(
          children: [
            SigninForm(formKey: formKey),
            SButton.filled(
              text: 'Sign in',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context
                      .read<SigninBloc>()
                      .add(const SigninEvent(username: '', password: ''));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
