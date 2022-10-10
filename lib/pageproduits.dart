import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Produits extends StatefulWidget {
  const Produits({super.key});

  @override
  State<Produits> createState() => _ProduitsState();
}

class _ProduitsState extends State<Produits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                            fillColor: Color.fromARGB(255, 215, 213, 213),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 232, 227, 227))),
                            hintText: "Search ",
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0.1),
                      child: ImageIcon(
                        AssetImage("img/38558.png"),
                        color: Color.fromARGB(255, 1, 7, 8),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  Text('TRENDING PRODUCTS'),
                  Container(
                      color: Colors.black,
                      width: 110,
                      height: 1,
                      margin: EdgeInsets.only(left: 5.0, right: 30.0),
                      child: Divider(
                        color: Color.fromARGB(255, 74, 5, 5),
                      )),
                  TextButton(
                    child: Text("See ALL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        )),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20.0),
                    width: MediaQuery.of(context).size.width - 30.0,
                    height: MediaQuery.of(context).size.height - 40.0,
                    child: GridView.count(
                      crossAxisCount: 2,
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 25,
                      children: <Widget>[
                        _buildCard('Chaise rose', '\$32.5',
                            'img/chaiserose.jpg', false, context),
                        _buildCard('Chaise noir', '\$32.5', '', true, context),
                        _buildCard('Chaise rose', '\$32.5',
                            'img/chaiserose.jpg', false, context),
                        _buildCard('Chaise noir', '\$32.5', '', true, context),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  Text('TRENDING PRODUCTS'),
                  Container(
                      color: Colors.black,
                      width: 110,
                      height: 1,
                      margin: EdgeInsets.only(left: 5.0, right: 30.0),
                      child: Divider(
                        color: Color.fromARGB(255, 74, 5, 5),
                      )),
                  TextButton(
                    child: Text("See ALL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        )),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(
    String name, String price, String imgPath, bool isFavorite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 20, bottom: 2, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 22, 3, 64).withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
            )
          ],
          color: Colors.white,
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(5.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isFavorite
                    ? Icon(
                        Icons.favorite,
                        color: Colors.blue,
                      )
                    : Icon(Icons.favorite_border, color: Colors.blue)
              ],
            ),
          ),
          Hero(
            tag: imgPath,
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('img/chaiserose.png'),
                alignment: Alignment.center,
              )),
            ),
          ),
        ]),
      ),
    ),
  );
}

Widget _buildCardtoo(
    String name, String price, String imgPath, bool isFavorite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 20, bottom: 2, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 22, 3, 64).withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
            )
          ],
          color: Colors.white,
        ),
      ),
    ),
  );
}
