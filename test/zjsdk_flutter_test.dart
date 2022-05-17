import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zjsdk_flutter/zjsdk_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.zjsdk.adsdk/method');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // expect(await ZjsdkFlutter.platformVersion, '42');
  });
}
