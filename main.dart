import 'dart:io';

main() async {
  var file = File('data.txt');
  var contents;

  if (await file.exists()) {
    contents = await file.readAsString();
    print(contents);

    var fileCopy = await File('data-copy.txt').writeAsString(contents);

    print(await fileCopy.exists());

    print(await fileCopy.length());
  } else {
    print("file doesn't exist");
  }
}
