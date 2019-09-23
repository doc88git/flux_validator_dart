part of flux_validator.src;

bool validatorCarPlate(value) {
  var plate = value.replaceAll('-', '');
  plate = removeWhiteSpace(plate);

  if (plate.length > 7 || plate.length < 7) return true;

  final RegExp isLetterNumber = RegExp(r'[^A-Za-z0-9]+$');

  final platePartOne = plate.substring(0, 3);
  final platePartTwo = charAt(plate, 3);
  final platePartThree = charAt(plate, 4);
  final platePartFour = plate.substring(5, 7);

  if (validatorLetter(platePartOne)) return true;
  if (validatorNumber(platePartTwo)) return true;
  if (isLetterNumber.hasMatch(platePartThree)) return true;
  if (validatorNumber(platePartFour)) return true;

  return false;
}
