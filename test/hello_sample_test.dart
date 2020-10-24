import 'package:hello_sample/hello_sample.dart';
import 'package:test/test.dart';

void main() {
  // test('calculate', () {
  //   expect(calculate(), 42);
  // });
}














/*
  Future<Map> contentDecode (reqBody)async=> await utf8.decoder.bind(reqBody.request).transform(json.decoder).first;

  server.transform(HttpBodyHandler()).listen((HttpRequestBody reqBody) async{
    switch (reqBody.request.uri.path) {
      case '/':
        reqBody.request.response
        ..writeln('hello world')
        // ignore: unawaited_futures
        ..close();
        break;
      case '/people':

        /// *******************
        /// handler GET reqBody.request
        ///
        
        if(reqBody.request.method == 'GET'){
          PeopleController(reqBody, databasse);
           
        }


        /// *******************
        /// handler POST reqBody.request
        /// curl -d '{"key1":"value1", "key2":"value2"}' -X POST http://localhost:8085/people
        else if(reqBody.request.method == 'POST'){
          var content =  await contentDecode(reqBody.request);
          print(content);
          await collection.save(content);
        }

        /// *******************
        /// handler PUT reqBody.request
        /// url : curl -X PUT localhost:8085/people?id=101 -d '{"key1":"value1", "key2":"value2"}'
        
        else if(reqBody.request.method == 'PUT'){ 

          /// get params in query
          /// reqBody.request.uri.queryParametersAll => List<Map>
          /// reqBody.request.uri.queryParameters => Map
          var id = reqBody.request.uri.queryParameters['id'];
          print(id);

          // allons trouver l'element dans notre collection

        var itemToremplace  = await collection.findOne(where.eq('id', id));
         var content =  await contentDecode(reqBody.request);
          print(content);

          if(itemToremplace != null){
            await collection.update(itemToremplace, content).then((value) => print('finish update'));
         }else{
           await collection.save(content).then((value) => print('saved'));
         }

        }


        /// *******************
        /// handler DELETE reqBody.request
        /// url : curl -X DELETE localhost:8085/people?id=101
        
        else if(reqBody.request.method == 'DELETE'){

          var id = reqBody.request.uri.queryParameters['id'];
          var itemToDelete  = await collection.findOne(where.eq('id', id));
          await collection.remove(itemToDelete).then((value) => print('finish removed'));

        }
        /// *******************
        /// handler PATCH reqBody.request
        /// url : curl -X PUT localhost:8085/people?id=101 -d '{"key1":"value1", "key2":"value2"}'
        ///
        else if(reqBody.request.method == 'PATCH'){
          var id = reqBody.request.uri.queryParameters['id'];
          var itemToPatch = await collection.findOne(where.eq('id', id));
          var content =  await contentDecode(reqBody.request);

          await collection.update(itemToPatch, {
            r'$set': content
          }).then((value) => print(value)); 
        }
        
      
        await reqBody.request.response.close();
        break;
      default:
        reqBody.request.response..statusCode = HttpStatus.notFound
        ..write('Not a Found');
        await reqBody.request.response.close();
    }
  });
  print('server listen are : http://localhost:$port');  
  */