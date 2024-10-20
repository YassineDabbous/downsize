import 'dart:io';
import 'dart:typed_data';

import 'package:downsize/downsize.dart';

void main() async {
  final input = '${Directory.current.path}/example/test.png';
  final output = '${Directory.current.path}/example/compressed.png';

  Uint8List? data = File(input).readAsBytesSync();

  print('Old size: ${data.sizeKb}kb');

  data = await Downsizer.downsize(data: data);

  print('New size: ${data?.sizeKb}kb');

  File(output).writeAsBytesSync(data!);
}
