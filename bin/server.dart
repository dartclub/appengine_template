import 'dart:io';
import 'package:appengine/appengine.dart';
import 'package:content_scrapers/router.dart';

main() async {
  //await runAppEngine(requestHandler);
  test();
}

test() async {
  try {
    await HttpServer.bind(InternetAddress.loopbackIPv4, 8080)
      ..listen(requestHandler);
  } catch (e) {
    print(e);
  }
}