import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/utils/auth/authentication_state.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';
import 'package:kpdelivery/views/screens/auth/signup.dart';
import 'package:kpdelivery/views/widgets/custom_button.dart';
import 'package:kpdelivery/views/widgets/custom_input.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final StreamController<AuthState> _streamController;

  SignInPage(this._streamController);

  signIn() async {
    _streamController.add(AuthState.authenticated());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/authbg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  alignment: Alignment.center,
                  child: Text(
                    'KloiPhi Delivery',
                    style: AppTypography.logoText,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.center,
                  child: Text(
                    'Sign In',
                    style: AppTypography.authHeading,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomInput(
                          labelText: 'Email',
                          hintText: 'abc@food.com',
                          inputAction: TextInputAction.next,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Some Text';
                            }
                            return null;
                          },
                          inputType: TextInputType.emailAddress,
                        ),
                        CustomInput(
                          labelText: 'Password',
                          hintText: 'Password',
                          isObscure: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Some Text';
                            }
                            return null;
                          },
                        ),
                        ElevatedButton(
                          onPressed: signIn,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 20.0,
                            ),
                            child: Icon(Icons.arrow_forward),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  alignment: Alignment.center,
                  child: Text(
                    'Or',
                    style: AppTypography.inactiveHintText,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      bgColor: Colors.white,
                      onTap: () {},
                      text: 'Google',
                      textStyle: AppTypography.regularDarkText,
                      imagePath: 'assets/icons/google.svg',
                    ),
                    CustomButton(
                      bgColor: Color(0xFF1877F2),
                      onTap: () {},
                      text: 'Facebook',
                      textStyle: AppTypography.regularText,
                      imagePath: 'assets/icons/facebook.svg',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'Not a member yet? Sign Up',
                      style: AppTypography.regularText,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
