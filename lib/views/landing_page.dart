import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/utils/auth/authentication_state.dart';
import 'package:kpdelivery/views/screens/home/home_page.dart';
import 'screens/auth/signin.dart';

class LandingPage extends StatelessWidget {
  // ignore: close_sinks
  final StreamController<AuthState> _streamController =
      StreamController<AuthState>();

  Widget buildUI(BuildContext context, AuthState state) {
    if (state.authenticated) {
      return HomePage(_streamController);
    } else {
      return SignInPage(_streamController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _streamController.stream,
      initialData: AuthState.initial(),
      builder: (context, snapshot) {
        final state = snapshot.data;
        return buildUI(context, state);
      },
    );
  }
}
