import 'dart:io';

createDirectory() async {
  var videos = Directory("videos").create();
  var music = Directory("music").create();
  var documents = Directory("documents").create();
  var image = Directory("images").create();
}

moveFiles(var files, var dirList) async {
  await for (final FileSystemEntity f in dirList) {
    if (f is File) {
      files = f.path;

      String results = files.replaceAll(".\\", "");

      var myfile = File(results);

      String text = myfile.toString();
      String firstStage = text.replaceAll("File: '", "");
      String secondStage = firstStage.replaceAll("'", "");

      if (secondStage != 'main.dart' && secondStage != 'README.md') {
        print(secondStage);
        myfile.rename('temp/$secondStage').then((_) => print("done"));
      } else {
        print("no files");
      }
    }
  }
}

readFiles() async {
  var dir = Directory("");
  var files;

  var dirList = dir.list(recursive: false);

  moveFiles(files, dirList);
}

main() async {
  readFiles();
  createDirectory();
}
