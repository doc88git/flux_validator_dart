part of flux_validator.src;

bool validatorCnpj(value){
    var cnpj = removeSpecialChars(value);
    cnpj = removeWhiteSpace(cnpj);

    if (cnpj.length > 14 || cnpj.length < 14) return true;
    if (allEqual(cnpj)) return true;

    final t = cnpj.length - 2,
          d = cnpj.substring(t),
          d1 = int.parse(charAt(d, 0)),
          d2 = int.parse(charAt(d, 1));

    final calc = (x) {
      final n = cnpj.substring(0, x);
      var y = x - 7,
          s = 0,
          r = 0;

      for (var i = x; i >= 1; i--) {
        s += int.parse(charAt(n, x - i)) * y--;
        if (y < 2) y = 9;
      }

      r = 11 - (s % 11);
      return r > 9 ? 0 : r;
    };
          
    final result = calc(t) == d1 && calc(t + 1) == d2;
    return !result;
  }