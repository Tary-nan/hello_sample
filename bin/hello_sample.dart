import 'package:hello_sample/src/people_controller.dart';
import 'package:http_server/http_server.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'dart:io';

void main(List<String> arguments)async {

  var port = 8085;
  var server = await HttpServer.bind('localhost', port);


  var databasse = Db('mongodb://localhost:27017/test');
  await databasse.open();

  print('connect to databasse');

 // var collection = databasse.collection('people');

  server.transform(HttpBodyHandler()).listen((HttpRequestBody reqBody) async {
    
    var request = reqBody.request;
    var response = request.response;

    switch (request.uri.path) {
      case '/':
        response.write('Hello, World!');
        await response.close();
        break;
      case '/people':
        PeopleController(reqBody, databasse);
        break;
      default:
        response
          ..statusCode = HttpStatus.notFound
          ..write('Not Found');
        await response.close();
    }
  });

  print('Server listening at http://localhost:$port');
}
