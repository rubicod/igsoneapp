import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageProduitOne extends StatelessWidget {
  const PageProduitOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfaf8),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 1,
              children: <Widget>[
                _buildCard('Chaise rose', '\$32.5', 'img/chaiserose.jpg', false,
                    context),
                _buildCard('Chaise noir', '\$32.5', 'img/chaiserose.jpg', false,
                    context),
                _buildCard('foteuille marons', '\$32.5', 'img/fotllmarons.jpg',
                    false, context),
                _buildCard('Chaise rose', '\$32.5', 'img/chaiserose.jpg', false,
                    context),
                _buildCard('Chaise rose', '\$32.5', 'img/chaiserose.jpg', false,
                    context),
                _buildCard('Chaise rose', '\$32.5', 'img/chaiserose.jpg', true,
                    context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
      String name, String price, String imgPath, bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
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
}
