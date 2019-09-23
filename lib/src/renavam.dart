part of flux_validator.src;

bool validatorRenavam(value) {
  var renavam = removeSpecialChars(value);
  renavam = removeWhiteSpace(renavam);

  if (renavam.length > 11 || renavam.length < 11) return true;
  if (allEqual(renavam)) return true;

  final renavamList = renavam.split('');
  var sum = 0, localValue = 0, digit = 0, x = 0;

  for (var i = 5; i >= 2; i--) {
    sum += int.parse(renavamList[x]) * i;
    x++;
  }
  localValue = sum % 11;

  if (localValue == 11 || localValue == 0 || localValue >= 10) {
    digit = 0;
  } else {
    digit = localValue;
  }
  bool result;
  if (digit == int.parse(renavamList[4])) {
    result = true;
  } else {
    result = false;
  }

  return result;
}
