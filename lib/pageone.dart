import 'package:flutter/material.dart';
import 'package:igstoo/inscription.dart';
import 'package:igstoo/login.dart';
import 'package:igstoo/pageproduits.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildHeader(context),
                buildMenuItems(context),
              ]),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        color: Color.fromARGB(255, 6, 42, 71),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage(
                'img/welcomeigs.png',
              ),
            ),
            Padding(padding: EdgeInsets.all(6)),
            Text(
              'RUICODX',
              style: TextStyle(color: Colors.white),
            ),
            Padding(padding: EdgeInsets.all(15)),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('ACCUEIL'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const LoginEcran(),
              )),
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits_outlined),
              title: const Text('PRODUITS'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LoginEcran(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_active_outlined),
              title: const Text('NOTIFICATION'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LoginEcran(),
                ));
              },
            ),
            const Divider(
              height: 7,
              color: Color.fromARGB(255, 6, 42, 71),
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border_outlined),
              title: const Text('FAVOURITES'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LoginEcran(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('SETTING'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Inscription(),
                ));
              },
            ),
            const Divider(
              height: 15,
              color: Color.fromARGB(255, 6, 42, 71),
            ),
            SizedBox(
              height: 30,
            ),
            Center(child: Text('code by RUBICODX')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                ImageIcon(
                  AssetImage("img/google-logo-history-png-2603-128x128.ico"),
                  color: Color.fromARGB(255, 243, 8, 20),
                  size: 35,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 28, 68, 201),
                  size: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                ImageIcon(
                  AssetImage(
                      "img/Twitter_logo_bird_transparent_png-394x320.png"),
                  color: Color.fromARGB(255, 8, 204, 243),
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Icon(
                  Icons.apple_outlined,
                  color: Color.fromARGB(255, 1, 12, 11),
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      );
}

class _PageOneState extends State<PageOne> {
  int currentTab = 0;
  final List<Widget> Ecrans = [
    Inscription(),
    LoginEcran(),
    PageOne(),
    Produits(),
  ];

  Widget currentEcrans = Produits();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(207, 255, 255, 255),
      ),
      drawer: NavigationDrawer(),
      body: PageStorage(
        bucket: bucket,
        child: currentEcrans,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 2, 32, 57),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: (() {
                  setState(() {});
                }),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 40,
                    ),
                    Text(
                      'Accuiel',
                      style: TextStyle(
                          color: currentTab == 0
                              ? Color.fromARGB(255, 4, 12, 18)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 229,
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: (() {
                  setState(() {});
                }),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 40,
                    ),
                    Text(
                      'Setting',
                      style: TextStyle(
                          color: currentTab == 0
                              ? Color.fromARGB(255, 4, 9, 14)
                              : Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
