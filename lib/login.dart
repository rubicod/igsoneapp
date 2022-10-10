import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pageone.dart';
import 'inscription.dart';

class LoginEcran extends StatelessWidget {
  const LoginEcran({super.key});

  @override
  Widget build(BuildContext context) {
    bool? check1 = true;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/flower.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: prefer_const_constructor
                      // ignore: prefer_const_constructors
                      Text(
                        'Welcome\nBack',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 15, 48, 106),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Image.asset(
                        'img/loginbg.png',
                        width: 150,
                        height: 130,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.0)),
                          labelText: 'Email',
                          hintText: 'Email',
                        ),
                        autofocus: false,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.0)),
                          labelText: 'password',
                          hintText: 'Password',
                        ),
                        autofocus: false,
                      )),
                ),
                Container(
                  child: Column(
                    children: [
                      CheckboxListTile(
                        //checkbox positioned at left
                        value: check1,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {
                          (() {
                            check1 = value;
                          });
                        },
                        title: Text("Remenber me"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Bienvenu'),
                        content: Text('vous etres enfin connecter WELCOME'),
                        actions: [
                          TextButton(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 1,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          TextButton(
                            child: Text(
                              'OK merci',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 1,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const PageOne()));
                            },
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xff550bfc), Color(0xff00ffa7)]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        width: 350,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Text(
                          'Connexion',
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(09.0),
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 30.0, right: 5.0),
                        child: Divider(
                          color: Colors.black,
                          height: 1,
                        )),
                  ),
                  Text("login with"),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 5.0, right: 30.0),
                        child: Divider(
                          color: Colors.black,
                          height: 15,
                        )),
                  ),
                ]),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    ImageIcon(
                      AssetImage(
                          "img/google-logo-history-png-2603-128x128.ico"),
                      color: Color.fromARGB(255, 243, 8, 20),
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Icon(
                      Icons.facebook,
                      color: Color.fromARGB(255, 28, 68, 201),
                      size: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    ImageIcon(
                      AssetImage(
                          "img/Twitter_logo_bird_transparent_png-394x320.png"),
                      color: Color.fromARGB(255, 8, 204, 243),
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Icon(
                      Icons.apple_outlined,
                      color: Color.fromARGB(255, 1, 12, 11),
                      size: 50.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Pas de compte alors',
                        style: TextStyle(
                          color: Color.fromARGB(255, 16, 2, 2),
                          fontSize: 17,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      child: Text("Inscrivez vous ici",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Inscription()));
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
