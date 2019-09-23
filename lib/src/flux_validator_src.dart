library flux_validator.src;

part './email.dart';

class Validator{

  static bool email(value){
    return validatorEmail(value);
  }
  
}