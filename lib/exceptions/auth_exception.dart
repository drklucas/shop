class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'Este e-mail já está em uso!',
    'OPERATION_NOT_ALLOWED': 'Sem permissão!',
    'TOO_MANY_ATTEMPTS_TRY_LATER': 'Acesso bloqueado temporariamente, tente mais tarde.',
    'EMAIL_NOT_FOUND': 'E-mail não encontrado',
    'INVALID_PASSWORD': 'Senhas devem ser iguais',
    'USER_DISABLE': 'Usuário desabilitado',

  };


  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Ocorreu um erro na autenticação!';
  }
}