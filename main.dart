import 'dart:io';

main() async {
  File myfile = File('myfile.txt');
  if (await myfile.exists()) {
    myfile.rename('yourFile.txt').then((_) => print('file renamed'));
  } else {
    print("file doesn't exist");
  }
}
