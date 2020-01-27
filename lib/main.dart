import 'dart:io';

main() async {
  var server = await HttpServer.bind("0.0.0.0", 8080);

  await for (var request in server) {
    request.response.write("Hello world!?");
    request.response.close();
  }
}