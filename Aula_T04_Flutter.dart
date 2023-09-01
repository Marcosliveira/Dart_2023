import 'package:flutter/material.dart';
import 'src/app.dart';

void ex_01() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello, Flutter'),
      ),
    ),
  );
  runApp(app);
}

void ex_02() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Minhas imagens'),
      ),
    ),
  );
  runApp(app);
}

void ex_03() {
  var app = MaterialApp(
  home: Scaffold(
    appBar: AppBar(
    title: const Text("Minhas Imagens"),
  ),
  floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add),   // https://api.flutter.dev/flutter/material/Icons-class.html
    onPressed: () {}
      ),
    ),
  );
runApp(app);
}

void ex_04() {
  var app = App();
  runApp(app);
}

void ex_05() {
  
}

void main() {
  //ex_01();
  //ex_02();
  //ex_03();
  ex_04();
}
