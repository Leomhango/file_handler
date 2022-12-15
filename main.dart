import 'dart:io';

main() async {
  File myfile = File("temp/go.txt");

  var text = await myfile.readAsString();
  print(text);
  var dir = Directory('temp');

  try {
    var dirList = dir.list();
    await for (final FileSystemEntity f in dirList) {
      if (f is File) {
        print('found file ${f.path}');
      } else if (f is Directory) {
        print('found Directory ${f.path}');
      }
    }
  } catch (e) {
    print(e.toString());
  }
}
