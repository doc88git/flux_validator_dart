library flux_validator.src;

part './utils.dart';

part './email.dart';
part './carPlate.dart';
part './number.dart';
part './letter.dart';
part './cep.dart';
part './cnh.dart';
part './cnpj.dart';
part './cpf.dart';
part './cpfCnpf.dart';
part './date.dart';
part './phone.dart';
part './renavam.dart';
part './required.dart';

class Validator {
  static bool email(value) {
    return validatorEmail(value);
  }

  static bool carPlate(value) {
    return validatorCarPlate(value);
  }

  static bool number(value) {
    return validatorNumber(value);
  }

  static bool letter(value) {
    return validatorLetter(value);
  }

  static bool cep(value) {
    return validatorCep(value);
  }

  static bool cnh(value) {
    return validatorCnh(value);
  }

  static bool cnpj(value) {
    return validatorCnpj(value);
  }

  static bool cpf(value) {
    return validatorCpf(value);
  }

  static bool cpfCnpf(value) {
    return validatorCpfCnpf(value);
  }

  static bool date(value) {
    return validatorDate(value);
  }

  static bool phone(value) {
    return validatorPhone(value);
  }

  static bool renavam(value) {
    return validatorRenavam(value);
  }

  static bool required(value) {
    return validatorRequired(value);
  }
}
