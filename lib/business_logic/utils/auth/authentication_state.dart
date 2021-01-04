class AuthState {
  final bool authenticated;

  AuthState.initial({this.authenticated = false});

  AuthState.authenticated({this.authenticated = true});

  AuthState.failed({this.authenticated = false});

  AuthState.signedOut({this.authenticated = false});
}
