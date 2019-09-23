part of flux_validator.src;

bool validatorCnh(value) {
  var cnh = removeSpecialChars(value);
  cnh = removeWhiteSpace(cnh);

  if (cnh.length > 11 || cnh.length <= 3) return true;
  if (allEqual(cnh)) return true;
  final hasLetter = validatorLetter(cnh);
  if (!hasLetter) return true;

  int v = 0;
  for (var i = 0, j = 9; i < 9; ++i, --j) {
    if (i < cnh.length) {
      final s = int.parse(charAt(cnh, i));
      v += (s * j).abs();
    }
  }

  int dsc = 0, vl1 = v % 11;
  if (vl1 >= 10) {
    vl1 = 0;
    dsc = 2;
  }

  v = 0;

  for (var i = 0, j = 1; i < 9; ++i, ++j) {
    if (i < cnh.length) {
      final s = int.parse(charAt(cnh, i));
      v += (s * j).abs();
    }
  }

  final x = v % 11;
  final vl2 = x >= 10 ? 0 : x - dsc;
  final a = '$vl1$vl2';
  final algo = a == cnh.substring(cnh.length - 2, cnh.length);

  return !algo;
}
