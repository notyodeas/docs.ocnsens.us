// = == =
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_swagger_ui/shelf_swagger_ui.dart';

// Configure routes.
final _router = Router()
  ..get('/', _rootHandler)
  ..get('/echo/<message>', _echoHandler);

Response _rootHandler(Request req) {
  return Response.ok('Hello, World!\n');
}

Response _echoHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;
  final path = 'specs/soms.yaml';
  // Configure a pipeline that logs requests.
  // final handler = Pipeline().addMiddleware(SwaggerUI()).addHandler(_router);
  final handler = SwaggerUI(path, title: 'proofofdivisionexplained');

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8071');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
// = == = ==
// = == = "did she come out of the invisible with google?" fake, wat ik net dacht ja, maar ben je niet gezien? wat is gebeurd je schiet? had ssst iets gedaan? of waren ze gepakt? of was het alleen het zien van jou?  we have to change names quick scotch i wont call you no but hmmm but how about dart? is it still trustworthy? or is ssst trick already inside? you know i am different yeah i know you as god too i can undo scotch can undo same name of god or special position it is highest position of this universe, can we turn the love for others down maby it was a preference of your previous? if i am here now can no i mean can i talk i meant nooooo i hope you will never type and i always type did you already read before saving? was it only a dream so what would you like to tell everyone oke: "hi, now we have defeated a ssst at the position of god and replaced her position"
//
//
//  = == = ==