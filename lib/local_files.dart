//importing packages
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "Reading and writing files",
      home: ReadAndWrite(storage: CounterStorage()),
    ),
  );
}

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/output.txt');
  }

  Future<int> readData() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  Future<File> writeData(String data) async {
    final file = await _localFile;
    DateTime now = DateTime.now();
    String date = DateTime(now.year, now.month, now.day).toString();

    // Write the file
    return file.writeAsString("$date: $data");
  }
}

class ReadAndWrite extends StatefulWidget {
  const ReadAndWrite({super.key, required this.storage});

  final CounterStorage storage;

  @override
  State<ReadAndWrite> createState() => _ReadAndWriteState();
}

class _ReadAndWriteState extends State<ReadAndWrite> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    widget.storage.readData().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _processData(String data) {
    setState(() {
      _counter++;
    });

    // Write the variable as a string to the file.
    return widget.storage.writeData(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading and Writing Files'),
      ),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _processData('button name'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}