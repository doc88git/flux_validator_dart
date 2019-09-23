part of flux_validator.src;

bool validatorCpf(value) {
  var cpf = removeSpecialChars(value);
  cpf = removeWhiteSpace(cpf);

  if (cpf.length > 11 || cpf.length < 11) return true;
  if (allEqual(cpf)) return true;

  int sum, rest;
  sum = 0;

  for (var i = 1; i <= 9; i++) {
    sum = sum + int.parse(cpf.substring(i - 1, i)) * (11 - i);
  }
  rest = (sum * 10) % 11;

  if (rest == 10 || rest == 11) rest = 0;
  if (rest != int.parse(cpf.substring(9, 10))) return true;

  sum = 0;
  for (var i = 1; i <= 10; i++) {
    sum = sum + int.parse(cpf.substring(i - 1, i)) * (12 - i);
  }
  rest = (sum * 10) % 11;

  if (rest == 10 || rest == 11) rest = 0;
  if (rest != int.parse(cpf.substring(10, 11))) return true;

  return false;
}
