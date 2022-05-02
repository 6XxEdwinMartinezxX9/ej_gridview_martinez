import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Widget con estado

class _MyHomePageState extends State<PaginaInicial> {
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
          //leading: const Icon(Icons.arrow_back),
          automaticallyImplyLeading: true,
          //leading: const Icon(Icons.arrow_back),

          title: const Text("MUEBLERIA EL CAMINO"),
          centerTitle: true,

          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print("soy edwin");
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.add_card,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.admin_panel_settings,
              ),
              onPressed: () {},
            )
          ],

          elevation: 8,
          shadowColor: Colors.black,
          backgroundColor: Colors.black,
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
