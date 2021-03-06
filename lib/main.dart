import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var iconColor = Colors.grey.shade800;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("Slam Dunk"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.blueGrey, Colors.cyan]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                        child: Image(
                          image: AssetImage("assets/image/ryonanfullteam.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/sendoh.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/fukuda.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/koshino.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image/uozumi.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ryonan",

                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                "Ryonan High School is one of the top teams in Kanagawa. It is considered a very prestigious school to be in. The basketball team is composed of Jun Uozumi, Akira Sendoh, Ryoji Ikegami, Hiroaki Koshino, Kicchou Fukuda, and Tomoyuki Uekusa as its main players. Their coach is Moichi Taoka.",),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                "Ryonan is the first team in the series Shohoku plays and also Hanamichi Sakuragi's debut game, though it's only a practice game. Even though Shohoku lost by a point, the team greatly surpassed Ryonan's expectations.Ryonan entered the top 4 and easily defeated Takezato. At that time, Shohoku lost to Kainan in a close game. Ryonan played excellently against the defending champions, Kainan in the Inter-High qualification games. In this game, Sendoh played as point guard, instead of his usual position as Forward and managed to force the game into overtime. However, Uozumi's ejection left all the pressure on Sendoh and Ryonan eventually lost.",),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: RichText(
                            text: TextSpan(
                                text:
                                "Ryonan entered the top 4 and easily defeated Takezato. At that time, Shohoku lost to Kainan in a close game. Ryonan played excellently against the defending champions, Kainan in the Inter-High qualification games. In this game, Sendoh played as point guard, instead of his usual position as Forward and managed to force the game into overtime. However, Uozumi's ejection left all the pressure on Sendoh and Ryonan eventually lost.", ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.95, -0.9),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (iconColor == Colors.grey.shade800) {
                      iconColor = Colors.red;
                    } else if (iconColor == Colors.red) {
                      iconColor = Colors.grey.shade800;
                    }
                  });
                },
                backgroundColor: Colors.white54,
                child: Icon(
                  Icons.favorite,
                  color: iconColor,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}