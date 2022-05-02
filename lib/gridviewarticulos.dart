import 'package:flutter/material.dart';
import 'package:martinez/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/a.jpg",
    "assets/images/b.png",
    "assets/images/c.jpg",
    "assets/images/d2.jpg",
    "assets/images/e.jpg",
    "assets/images/f.jpg",
    "assets/images/g.jpg",
    "assets/images/h.jpg",
    "assets/images/i.jpg",
    "assets/images/j.jpg",
  ]; //Lista de imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 10,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
