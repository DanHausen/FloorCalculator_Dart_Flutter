class ValidatorHelper {
  static String isValidText(String text) {
    return double.tryParse(text) <= 0
        ? 'Valor inválido'
        : (text.isEmpty ? 'Campo obrigatório' : null);
  }
}
