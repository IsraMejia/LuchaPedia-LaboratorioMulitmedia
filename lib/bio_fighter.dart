import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:luchapediaa/all_fighters.dart';

class BioFighter extends StatelessWidget {
  String urlKeminito =
      "https://imagenes.milenio.com/bphSgOtpXqNAf5Zn_9i1QK3v2fs=/958x596/smart/https://www.milenio.com/uploads/media/2020/03/24/kemonito-santiago-chaparro_0_9_958_596.jpeg";
  String bioK =
      "KeMinito nacio el 3 de julio de 1967, es un icono de la lucha libre profesional mexicano, actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL).";
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 811) {
        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.directions_walk, size: 40),
            title: Text(
              'Luchapedia',
              style: TextStyle(fontSize: 30, color: Colors.amber[50]),
            ),
            backgroundColor: Colors.purpleAccent[700],
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.0, 0.0),
                        end: Alignment(0.6, 0.99),
                        colors: [
                      Colors.purpleAccent[700],
                      Colors.deepPurpleAccent[400]
                    ])),
              ),
              Column(
                children: [
                  Expanded(child: Container()),
                  luchadorBio(),
                  Expanded(child: Container()),
                  Text(
                    "Mas Luchadores",
                    style: TextStyle(
                        fontSize: 29,
                        color: Color.fromRGBO(220, 229, 227, 0.9)),
                  ),
                  Expanded(child: Container()),
                  listaLuchadores(context),
                  Expanded(child: Container()),
                ],
              )
            ],
          ),
        );
        //Scaffold
      } else {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.directions_walk, size: 40),
            title: Text(
              'Luchapedia Web',
              style: TextStyle(fontSize: 30, color: Colors.amber[50]),
            ),
            backgroundColor: Colors.purpleAccent[700],
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.0, 0.0),
                        end: Alignment(0.0, 0.50),
                        colors: [
                      Colors.purpleAccent[700],
                      Colors.deepPurpleAccent[400]
                    ])),
              ),
              Row(
                children: [
                  Expanded(child: luchadorBioWeb(constraints)),
                  Expanded(child: Container())
                ],
              )
            ],
          ),
        );
        //Scaffold
      }
    });
  } //build

  Widget luchadorBio() {
    return Center(
      child: Container(
        height: 385,
        width: 350,
        // decoration: BoxDecoration(
        //   color: Colors.indigo[50],
        //   borderRadius: BorderRadius.circular(40)
        // ),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/Gifs/loading.gif",
                  image: urlKeminito,
                  width: 350,
                ),
              ),
            ),
            // Image(
            //   width: 350,
            //   image: NetworkImage(urlKeminito) ,
            // ),
            Positioned(
              top: 155,
              left: 10,
              child: Container(
                width: 330,
                height: 210,
                decoration: BoxDecoration(
                    color: Colors.indigo[700],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Kemonito',
                      style: TextStyle(fontSize: 28, color: Colors.yellow[200]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        bioK,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellow[50],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          color: Colors.teal[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {},
                          child: Text(
                            'Ver mas',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 30),
                        FlatButton(
                            color: Colors.pink[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text('Me gusta'),
                                Icon(Icons.favorite_border)
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } //luchadorbio

  Widget luchadorBioWeb(BoxConstraints constraints) {
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: constraints.maxWidth * 0.05,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/Gifs/loading.gif",
              image: urlKeminito,
              width: 450,
            ),
          ),
        ),
        // Image(
        //   width: 350,
        //   image: NetworkImage(urlKeminito) ,
        // ),
        Positioned(
          top: 155,
          left: 10,
          child: Container(
            width: 330,
            height: 210,
            decoration: BoxDecoration(
                color: Colors.indigo[700],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Kemonito',
                  style: TextStyle(fontSize: 28, color: Colors.yellow[200]),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    bioK,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.yellow[50],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      color: Colors.teal[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text(
                        'Ver mas',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(width: 30),
                    FlatButton(
                        color: Colors.pink[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Me gusta'),
                            Icon(Icons.favorite_border)
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  } //luchadorBioWeb

  Widget listaLuchadores(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 380,
        // decoration: BoxDecoration(
        //   color: Colors.green,
        //   borderRadius: BorderRadius.circular(10)
        // ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/elSanto.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "El santo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Santo

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/Angelica.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Angelica",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Angelica

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/blueDemon.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "BlueDemon",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Santo

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/ladyShani.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "LadyShani",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Santo

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/historico.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Historico",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Santo

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/diosaQuetzal.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 65, left: 2),
                child: Text(
                  "Diosa Quetzal",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Santo

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/frijolito.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Frijolito",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Container Santo

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Luchadores/masLuchadores.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                  child: IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.lightBlueAccent[400],
                  size: 80,
                ),
                onPressed: () {
                  print("Mas luchadores ");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AllFighters(),
                    ),
                  );
                },
              )),
            ),
            //Mas Luchadores
          ],
        ),
      ),
    );
  }
}
