part of flux_validator.src;

bool validatorCep(value) {
  final RegExp re = RegExp(r'\d{5}-\d{3}');
  final cep = removeWhiteSpace(value);
  final bool matches = re.hasMatch(cep);

  return !matches;
}