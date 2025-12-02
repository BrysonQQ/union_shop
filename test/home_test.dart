// 目的：基础的 sanity 测试，确保测试框架工作正常。
// Purpose: Basic sanity test to ensure the test framework is working.
// 这个文件包含一个非常简单的断言，作为测试运行环境的烟雾测试。
// This file contains a very simple assertion as a smoke test for the test run environment.
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Sanity tests', () {
    test('basic arithmetic sanity', () {
      expect(1 + 1, 2);
    });
  });
}