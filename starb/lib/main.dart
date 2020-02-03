import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bakiye = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          "HESABIM",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: leftDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.0,
              padding: EdgeInsets.all(10.0),
              child: Row(children: [
                Image.asset('assets/images/IMG_4394.jpg'),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "MOBİL ÖDEME YAP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 12.5),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "BAKİYE   ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            bakiye.toString() + "  ₺",
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset("assets/images/unnamed.jpg"),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "YILDIZLAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "İkram İçeceğiniz",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "ADET",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print("hello");
                  },
                  child: Container(
                    height: 175,
                    width: 225,
                    child: Image.asset("assets/images/IMG_4402.jpg"),
                  ),
                ),
                Text(
                  "  Güncel Mesaj\nBulunmamaktadır",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print("hello");
                  },
                  child: Container(
                    height: 100,
                    width: 225,
                    child: Image.asset("assets/images/onthego.jpg"),
                  ),
                ),
                Text(
                  "HESAP GEÇMİŞİ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  leftDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/starbucks_PNG11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1000),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ddjsemih.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DJ Semih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profil Ayarları",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              title: Text(
                "HESABIM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => starCard()),
                );
              },
              title: Text(
                "STARBUCKS CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yildiz()),
                );
              },
              title: Text(
                "YILDIZLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maps()),
                );
              },
              title: Text(
                "MAĞAZALAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => message()),
                );
              },
              title: Text(
                "MESAJLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => urunler()),
                );
              },
              title: Text(
                "ÜRÜNLER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class starCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "STARBUCKS CARD",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: leftDrawerCard(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/images/IMG_4408.jpg"),
            ),
            Container(
              child: Image.asset("assets/images/tamtam.jpg"),
            )
          ],
        ),
      ),
    );
  }

  leftDrawerCard(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/starbucks_PNG11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1000),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ddjsemih.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DJ Semih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profil Ayarları",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              title: Text(
                "HESABIM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "STARBUCKS CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yildiz()),
                );
              },
              title: Text(
                "YILDIZLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maps()),
                );
              },
              title: Text(
                "MAĞAZALAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => message()),
                );
              },
              title: Text(
                "MESAJLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => urunler()),
                );
              },
              title: Text(
                "ÜRÜNLER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class yildiz extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YILDIZLAR"),
        backgroundColor: Colors.grey,
      ),
      drawer: leftDrawerCard(context),
      body: Image.asset("assets/images/yildiz.jpg"),
    );
  }

  leftDrawerCard(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/starbucks_PNG11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1000),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ddjsemih.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DJ Semih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profil Ayarları",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              title: Text(
                "HESABIM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => starCard()),
                );
              },
              title: Text(
                "STARBUCKS CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "YILDIZLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maps()),
                );
              },
              title: Text(
                "MAĞAZALAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => message()),
                );
              },
              title: Text(
                "MESAJLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => urunler()),
                );
              },
              title: Text(
                "ÜRÜNLER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class maps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("MAĞAZALAR"),
      ),
      drawer: leftDrawerCard(context),
      body: Image.asset("assets/images/mapss.jpg"),
    );
  }

  leftDrawerCard(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/starbucks_PNG11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1000),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ddjsemih.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DJ Semih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profil Ayarları",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              title: Text(
                "HESABIM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => starCard()),
                );
              },
              title: Text(
                "STARBUCKS CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yildiz()),
                );
              },
              title: Text(
                "YILDIZLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "MAĞAZALAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => message()),
                );
              },
              title: Text(
                "MESAJLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => urunler()),
                );
              },
              title: Text(
                "ÜRÜNLER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("MESAJLAR"),
      ),
      drawer: leftDrawerCard(context),
      body: Image.asset("assets/images/mesajj.jpg"),
    );
  }

  leftDrawerCard(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/starbucks_PNG11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1000),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ddjsemih.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DJ Semih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profil Ayarları",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              title: Text(
                "HESABIM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => starCard()),
                );
              },
              title: Text(
                "STARBUCKS CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yildiz()),
                );
              },
              title: Text(
                "YILDIZLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maps()),
                );
              },
              title: Text(
                "MAĞAZALAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "MESAJLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => urunler()),
                );
              },
              title: Text(
                "ÜRÜNLER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class urunler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("ÜRÜNLER"),
      ),
      drawer: leftDrawerCard(context),
      body: Image.asset("assets/images/urunler.jpg"),
    );
  }

  leftDrawerCard(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/starbucks_PNG11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 1000),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/ddjsemih.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DJ Semih",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profil Ayarları",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              title: Text(
                "HESABIM",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => starCard()),
                );
              },
              title: Text(
                "STARBUCKS CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yildiz()),
                );
              },
              title: Text(
                "YILDIZLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maps()),
                );
              },
              title: Text(
                "MAĞAZALAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => message()),
                );
              },
              title: Text(
                "MESAJLAR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "ÜRÜNLER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

