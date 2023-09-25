import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key, required this.formKey});

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            name: 'email',
          ),
          FormBuilderTextField(
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            name: 'password',
          ),
        ],
      ),
    );
  }
}
