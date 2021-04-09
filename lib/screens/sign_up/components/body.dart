import 'package:flutter/material.dart';
import 'package:nimihub/components/social_card.dart';
import 'package:nimihub/constants.dart';
import 'package:nimihub/screens/sign_up/components/sign_up_form.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.07), //8% of total height
              SignUpForm(),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.07), //8% of total height
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                'By continuing your confirm that you agree \nwith the Terms and Conditions',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
