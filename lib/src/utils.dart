part of flux_validator.src;

String removeWhiteSpace(str) {
  if (str.length <= 0) return '';
  return str.trim().replaceAll(RegExp(r'\s+'), '');
}

String removeSpecialChars(str) {
  return str.replaceAll(RegExp(r'[^a-zA-Z 0-9]+'), '');
}

bool allEqual(str) {
  final RegExp re = RegExp(r'^(\d)\1+$');
  return re.hasMatch(str);
}

String charAt(String subject, int position) {
  if (subject is! String ||
      subject.length <= position ||
      subject.length + position < 0) {
    return '';
  }

  final _realPosition = position < 0 ? subject.length + position : position;
  return subject[_realPosition];
}
