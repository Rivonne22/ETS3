import 'package:encomiendasv/app/ui/page/page_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppEncomiendas());
}

class AppEncomiendas extends StatelessWidget {
  const AppEncomiendas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial 4",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: PageHome(),
    );
  }
}
