import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> args) async {
  var file = File("TestMe.md");
  var lines = utf8.decoder
      .bind(file.openRead())
      .transform(LineSplitter());
  await for (var line in lines) {
    if (!line.startsWith('#')) print(line);
  }
}
