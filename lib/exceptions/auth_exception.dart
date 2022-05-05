class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'E-mail already registered',
    'OPERATION_NOT_ALLOWED': 'Operation not allowed!',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Access temporarily blocked. Try later',
    'EMAIL_NOT_FOUND': 'E-mail not found.',
    'INVALID_PASSWORD': 'Entered password does not match.',
    'USER_DISABLED': 'User account has been disabled.',
  };

  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'An error occurred in the authentication process.';
  }
}
