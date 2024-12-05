class Validator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha  o campo $fieldName';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha o email';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Email inválido';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha sua senha';
    }

    if (value.length < 6) {
      return 'A senha deve ter no minimo 6 caractéres';
    }

    //Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Senha deve ter pelo menos uma letra maiúscula';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Senha deve ter pelo menos um número';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Senha deve ter pelo menos um caractére especial';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha o telefone';
    }

    final phoneRegExp = RegExp(r'^\(?[1-9][0-9]\)?\s?[0-9]{5}-?[0-9]{4}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Telefone inválido';
    }

    return null;
  }
}
