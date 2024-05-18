import 'package:flutter_template/services/converter/num_to_short_string.dart'
    show numToShortString;
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// Number abbreviation test
  group('numToShortString', () {
    test('Convert number to short string', () {
      expect(numToShortString(100), '100');
      expect(numToShortString(1000), '1.0K');
      expect(numToShortString(1234), '1.2K');
      expect(numToShortString(12345), '12.3K');
      expect(numToShortString(123456), '123K');
      expect(numToShortString(1000000), '1.0M');
      expect(numToShortString(1234567), '1.2M');
      expect(numToShortString(12345678), '12.3M');
      expect(numToShortString(123456789), '123M');
      expect(numToShortString(1000000000), '1.0B');
      expect(numToShortString(1234567890), '1.2B');
      expect(numToShortString(12345678901), '12.3B');
      expect(numToShortString(123456789012), '123B');
      expect(numToShortString(1000000000000), '1.0T');
      expect(numToShortString(1234567890123), '1.2T');
      expect(numToShortString(12345678901234), '12.3T');
      expect(numToShortString(123456789012345), '123T');
    });

    test('Edge cases', () {
      expect(numToShortString(0), '0');
      expect(numToShortString(999), '999');
      expect(numToShortString(999999999999999), '1000T');
      expect(numToShortString(1000000000000000), '1e+15'); // Overflow case
    });
  });
}
