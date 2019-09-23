part of flux_validator.src;

bool validatorPhone(value) {
  var phone = removeSpecialChars(value);
  phone = removeWhiteSpace(phone);

  if (allEqual(phone)) return true;
  final RegExp re = RegExp(
      r'^(?:(?:\+|00)?(55)\s?)?(?:\(?([1-9][0-9])\)?\s?)?(?:((?:9\d|[2-9])\d{3})-?(\d{4}))$');

  final bool matches = re.hasMatch(phone);
  return !matches;
}
