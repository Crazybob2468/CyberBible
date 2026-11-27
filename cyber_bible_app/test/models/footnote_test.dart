/// Tests chapter-wide note labels used in scripture and chapter-end notes.
library;

import 'package:cyber_bible_app/models/footnote.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('generates unique alphabetic labels beyond Z', () {
    expect(footnoteLabelForIndex(0), 'A');
    expect(footnoteLabelForIndex(25), 'Z');
    expect(footnoteLabelForIndex(26), 'AA');
    expect(footnoteLabelForIndex(27), 'AB');
    expect(footnoteLabelForIndex(701), 'ZZ');
    expect(footnoteLabelForIndex(702), 'AAA');
    expect(() => footnoteLabelForIndex(-1), throwsRangeError);
  });
}
