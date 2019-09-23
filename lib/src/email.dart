part of flux_validator.src;

bool validatorEmail(value) {
  if (value == null) return true;
  final RegExp re = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  final bool matches = re.hasMatch(value);
  return !matches;
}
