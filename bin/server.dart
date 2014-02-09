import 'dart:io';

void main() {
  HttpServer.bind('0.0.0.0', 8080).then((HttpServer server) {
    print(server);
    server.listen((HttpRequest request) {
      request.response.write('Hello, world');
      request.response.close();
    });
  });
  }