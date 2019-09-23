import 'package:flutter_test/flutter_test.dart';
import '../lib/flux_validator_dart.dart';

void main() {
  testWidgets('Teste CPF', (WidgetTester tester) async {
    final List valids = [
      '094.521.100-74',
      '229.969.000-06',
      '539.342.830-80',
      '607.066.700-00',
      '56145360003',
      '36373221024'
    ];

    final List invalids = [
      '11111111111',
      '00000000000',
      '094.521.',
      '094',
      '415.882.118-50'
    ];

    for (var item in valids) {
      final flag = Validator.cpf(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.cpf(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Teste CNPJ', (WidgetTester tester) async {
    final List valids = [
      '71.677.506/0001-88',
      '77.899.087/0001-05',
      '75.889.932/0001-36',
      '93462543000101',
      '39483185000178',
      '91021389000107'
    ];

    final List invalids = [
      '11111111111111',
      '00000000000000',
      '50.418.706/0001-4644',
      '50.418.706/0',
      '75.889',
      '0001-36',
      '087/'
    ];

    for (var item in valids) {
      final flag = Validator.cnpj(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.cnpj(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Car Plate', (WidgetTester tester) async {
    final List valids = [
      'MHD-6918',
      'KCU-6473',
      'NET-5886',
      'HOP-3D78',
      'JJJ-7V66',
      'MER-1C26'
    ];

    final List invalids = [
      'MHD-',
      'KCU-647A',
      '@#T-5886',
      'H2P-3D78',
      '7V66',
      'MER',
      'HWP-3@78',
      'HWP-A478'
    ];

    for (var item in valids) {
      final flag = Validator.carPlate(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.carPlate(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('CEP', (WidgetTester tester) async {
    final List valids = ['38055-090', '68911-153', '79815-714'];
    final List invalids = ['91120', 'aaaaaaa', '29.', '1-153'];

    for (var item in valids) {
      final flag = Validator.cep(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.cep(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('CNH', (WidgetTester tester) async {
    final List valids = ['65818232965', '10901795760', '22621980653'];
    final List invalids = [
      '91120',
      'aaaaaaa',
      '29.',
      '00123456789',
      '35932898821',
      '11111111111'
    ];

    for (var item in valids) {
      final flag = Validator.cnh(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.cnh(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('DATE', (WidgetTester tester) async {
    final List valids = ['08/01/1991', '08/12/2009', '01/12/2001'];
    final List invalids = ['08011991', '111', '@#T'];

    for (var item in valids) {
      final flag = Validator.date(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.date(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Email', (WidgetTester tester) async {
    final List valids = [
      'someone@example.com',
      'someone@example.co',
      'someone123@example.co.uk',
      'Pelé@example.com',
      'very.common@example.com',
      'other.email-with-dash@example.com',
      'disposable.style.email.with+symbol@example.com'
    ];

    final List invalids = [
      '@example.com',
      '@example',
      null,
      'undefined',
      'null',
      'someone@example.c',
      'som*eone@example.c'
    ];

    for (var item in valids) {
      final flag = Validator.email(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.email(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Letter', (WidgetTester tester) async {
    final List invalids = ['12', '1111111', '551137673866', '1234567890'];
    final List valids = ['aaaaa', 'bbbbb', 'cccccc'];

    for (var item in valids) {
      final flag = Validator.letter(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.letter(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Number', (WidgetTester tester) async {
    final List valids = ['12', '1111111', '551137673866', '1234567890'];
    final List invalids = ['aaaaa', 'bbbbb', '!##'];

    for (var item in valids) {
      final flag = Validator.number(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.number(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Phone', (WidgetTester tester) async {
    final List valids = [
      '+55 (11) 3767-3866',
      '551137673866',
      '(11) 3767-3866',
      '+55 (84) 99787-7803',
      '(84) 99787-7803',
      '8499787-7803'
    ];

    final List invalids = ['11111', '11111111', '11 222-22', '1', 'aaaaa'];

    for (var item in valids) {
      final flag = Validator.phone(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.phone(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('RENAVAM', (WidgetTester tester) async {
    final List valids = ['38914927148', '65655504170', '95640486440'];
    final List invalids = ['MHD', '9564048', '@#T-5886', '00000000000'];

    for (var item in valids) {
      final flag = Validator.renavam(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.renavam(item);
      expect(flag, equals(true));
    }
  });

  testWidgets('Required', (WidgetTester tester) async {

    final List valids = ['asjdj', 0, 'undefined', 'null', 's ', true];
    final List invalids = ['', ' '];

    for (var item in valids) {
      final flag = Validator.required(item);
      expect(flag, equals(false));
    }

    for (var item in invalids) {
      final flag = Validator.required(item);
      expect(flag, equals(true));
    }
  });
}
