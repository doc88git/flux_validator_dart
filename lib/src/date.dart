part of flux_validator.src;

bool validatorDate(value) {
  final RegExp re = RegExp(r'^\d{2}[.//]\d{2}[.//]\d{4}$');
  final bool matches = re.hasMatch(value);
  return !matches;
}