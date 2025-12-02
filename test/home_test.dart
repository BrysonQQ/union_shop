// 目的：基础的 sanity 测试，确保测试框架工作正常。
// 这个文件包含一个非常简单的断言，作为测试运行环境的烟雾测试。
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Sanity tests', () {
    test('basic arithmetic sanity', () {
      expect(1 + 1, 2);
    });
  });
}