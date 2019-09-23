# Flux Validator Dart

A package to validate strings and input data for dart.

## Getting Started

### Install
Add to your `pubspec.yaml`
```yaml
dependencies:
  flux_validator_dart: <lastest-version>
```

And then run `# pub get` in your terminal.

### How to use
#### Import
```dart
import 'package:flux_validator_dart/flux_validator_dart.dart';
```

#### Use
```dart
Validator.email(value) // returns bool
```

#### Validator Options
##### Mercosul car plate
Ex: AAA-0000 or AAA-0A00

```dart
Validator.carPlate(value)
```

##### Brazilian CEP
Ex: 00000-000

```dart
Validator.cep(value)
```

##### Brazilian CNH
Ex: 00000000000

```dart
Validator.cnh(value)
```

##### Brazilian CNPJ
Ex: 00.000.000/0000-00

```dart
Validator.cnpj(value)
```

##### Brazilian CPF
Ex: 000.000.000-00

```dart
Validator.cpf(value)
```

##### Brazilian CPF & CNPJ
Ex: 000.000.000-00|0000-00

```dart
Validator.cpfCnpj(value)
```

##### dd/mm/yyyy Date
Ex: 00/00/0000

```dart
Validator.date(value)
```

##### Email
Ex: aaaaa@aaa.aaa.aa

```dart
Validator.email(value)
```

##### Numbers
Ex: 0123456

```dart
Validator.numbers(value)
```

##### Letters
Ex: abcdefgABCDEFG

```dart
Validator.letters(value)
```

##### Brazilian Phone
Ex: +55 (11) 0 0000-0000

```dart
Validator.phone(value)
```

##### Brazilian Renavam
Ex: 00000000000

```dart
Validator.renavam(value)
```