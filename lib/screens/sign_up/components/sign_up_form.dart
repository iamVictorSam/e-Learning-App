import 'package:flutter/material.dart';
import 'package:nimihub/components/custom_suffix_icon.dart';
import 'package:nimihub/components/default_button1.dart';
import 'package:nimihub/components/form_error.dart';
import 'package:nimihub/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton1(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
                //Go to the Complete Profile Page
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (password == confirmPassword) {
          removeError(error: kMatchPassError);
        }

        return null;
      },
      onSaved: (value) => confirmPassword = value,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Re-enter your password',
        labelText: 'Confirm Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        password = value;
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return null;
      },
      onSaved: (value) => password = value,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNulError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kEmailValidEmailError);
          return "";
        }

        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNulError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kEmailValidEmailError);
        }

        return null;
      },
      onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
