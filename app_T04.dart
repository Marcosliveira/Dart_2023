import 'package:flutter/material.dart';

// class App extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Minhas Imagens"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () {
//             print("Estou no arquivo app.dart!");
//         },
//       ),
//     ),
//   );
// }
// }

class AppState extends State<App>{
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_a_photo),
          onPressed: () {
            //numeroImagens++;
            //print("Estou no arquivo app.dart!");
            setState(() => numeroImagens++);
            print('ex05');
        },
      ),
      body: Text('$numeroImagens'),
    ),
  );
}
}

class App extends StatefulWidget{
  @override
  State<App> createState() {
    return AppState();
  }
}
