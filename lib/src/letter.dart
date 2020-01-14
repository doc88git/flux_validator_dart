part of flux_validator.src;

bool validatorLetter(value) {
  final RegExp re = RegExp(r'^[a-zA-Z]+$');
  final bool matches = re.hasMatch(value);
  return !matches;
}
