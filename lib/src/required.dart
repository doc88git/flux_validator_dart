part of flux_validator.src;

bool validatorRequired(value) {
  bool result;
  if (value == null) return true;
  if (value is! String) return false;

  if (value.trim() == '') {
    result = true;
  } else {
    result = false;
  }

  return result;
}
