import 'package:flutter/material.dart';
import 'login.page.dart';

class HomePage extends StatelessWidget{

  List<String> events=[
    "Sobre",
    "Material de Apoio",
    "Atividades",
    "Contato",
    "Enviar Material",
    "Instagram",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 80.0,bottom: 20.0),
          decoration: BoxDecoration(image: DecorationImage( image: AssetImage("assets/images/logo_fnd2.png"))),
          child: GridView(

            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), //2 itens por linha
            children: events.map((title){
              return GestureDetector(
                child: Card(
                  margin: const EdgeInsets.all(20.0),
                  child:  getCardByTitle(title),

              ),onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
                );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Column getCardByTitle(String title) {

    String img = "";

    if(title =="Sobre")
      img = "assets/images/team_time.png";
    else if(title =="Material de Apoio")
      img = "assets/images/calendar.png";
    else if(title =="Atividades")
      img = "assets/images/team_time.png";
    else if(title =="Contato")
      img = "assets/images/calendar.png";
    else if(title =="Enviar Material")
      img = "assets/images/team_time.png";
    else if(title =="Instagram")
      img = "assets/images/calendar.png";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack( children: <Widget>[
              new Image.asset(img,width: 80.0,height: 80.0,)
            ],
            )
          ),
        ),
        Text(title, style: TextStyle(fontSize: 20.0, color:Color(0XFF33691E), fontFamily: 'Raleway', fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
      ],
    );
  }
}