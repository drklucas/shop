

class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'Email já em uso!',
    'OPERATION_NOT_ALLOWED': 'Operação não permitida!',
    'TOO_MANY_ATTEMPTS_TRY_LATER': 'Acesso bloqueado, tente novamente mais tarde!',
    'EAIL_NOT_FOUND': 'Email não cadastrado!',
    'INVALID_PASSWORD': 'Senha incorreta!',
    'USER_DISABLED': 'Conta desabilitada!',
  };

  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Houve um erro';
  }
}