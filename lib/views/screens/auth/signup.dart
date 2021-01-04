import 'package:flutter/material.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';
import 'package:kpdelivery/views/widgets/custom_input.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
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
                  height: MediaQuery.of(context).size.height * 0.15,
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
                    'Sign Up',
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
                          labelText: 'Name',
                          hintText: 'Full Name',
                          inputAction: TextInputAction.next,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Some Text';
                            }
                            return null;
                          },
                        ),
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
                          inputAction: TextInputAction.next,
                          isObscure: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Some Text';
                            }
                            return null;
                          },
                        ),
                        CustomInput(
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                          isObscure: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Some Text';
                            }
                            return null;
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {},
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back to login',
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
