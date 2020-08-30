import 'package:flutter/material.dart';

class BioFighter extends StatelessWidget {
  String urlKeminito ="https://imagenes.milenio.com/bphSgOtpXqNAf5Zn_9i1QK3v2fs=/958x596/smart/https://www.milenio.com/uploads/media/2020/03/24/kemonito-santiago-chaparro_0_9_958_596.jpeg";
  String bioK = "KeMinito nacio el 3 de julio de 1967, es un icono de la lucha libre profesional mexicano, actualmente trabaja para la empresa Consejo Mundial de Lucha Libre (CMLL).";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.directions_walk, size: 40),
        title: Text('Luchapedia',
          style: TextStyle(
            fontSize: 30, color: Colors.amber[50]
          ),
        ),
        backgroundColor: Colors.purpleAccent[700],
      ),
      body: Stack(
        children: [
          Container( color: Colors.purpleAccent[700],),
          Column(
            children: [
              Expanded(child: Container()),
              luchadorBio(),
              Expanded(child: Container()),
              Text("Mas Luchadores",
                style: TextStyle(
                  fontSize: 29,
                  color: Color.fromRGBO(220, 229, 227, 0.9)
                ),
              ),
              Expanded(child: Container()),
            ],
          )
        ],
      ),

    );
  }//build

  Widget luchadorBio(){
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
            Image(
              width: 350,
              image: NetworkImage(urlKeminito) ,
            ),
            Positioned(
              top: 155,
              left:10,
              child: Container(
                width: 330,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.indigo[700],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround ,
                  children: [
                    Text('Kemonito', 
                      style: TextStyle(
                        fontSize: 28, color: Colors.yellow[200]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(bioK,
                        style: TextStyle(
                          fontSize: 16, color: Colors.yellow[50],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          color: Colors.teal[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ) ,
                          onPressed: (){}, 
                          child: Text('Ver mas', style: TextStyle(fontSize: 18),),
                        ),

                        SizedBox(width: 30),

                        FlatButton(
                          color: Colors.pink[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          onPressed: (){},
                          child: Row(
                            children: [
                              Text('Me gusta'),
                              Icon(Icons.favorite_border)
                            ],
                          )
                        )

                     ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ) ;
  }
}