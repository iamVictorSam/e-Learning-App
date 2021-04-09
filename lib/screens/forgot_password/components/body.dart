import 'package:flutter/material.dart';
import 'package:nimihub/components/custom_suffix_icon.dart';
import 'package:nimihub/components/default_button1.dart';
import 'package:nimihub/components/form_error.dart';
import 'package:nimihub/components/no_accout_text.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(28)),
              ),
              Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNulError)) {
                setState(() {
                  errors.add(kEmailNulError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kEmailValidEmailError)) {
                setState(() {
                  errors.add(kEmailValidEmailError);
                });
              }

              return null;
            },
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNulError)) {
                setState(() {
                  errors.remove(kEmailNulError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kEmailValidEmailError)) {
                setState(() {
                  errors.remove(kEmailValidEmailError);
                });
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
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton1(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  // Do What you want to do
                }
              }),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText()
        ],
      ),
    );
  }
}
