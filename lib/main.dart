import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(411, 823));
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            List: [
              Color(0xff78B4BC),
              Color(0xff84A6D7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            color: Colors.white,
            height: size.height * .90,
            width: size.width * .90,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                  children: [
                    Container(
                      width: constraints.maxWidth * .5,
                      child: Column(
                        children: [
                          Container(
                            height: constraints.maxHeight * .4,
                            color: Color(0xff84A6D7),
                            child: header(context),
                          ),
                          Expanded(
                            child: Container(
                              color: Color(0xff78B4BC),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  titleSection(
                                    title: 'Objetivo',
                                    color: Color(0xff334E50),
                                  ),
                                  textSection(
                                    color: Colors.white,
                                    text:
                                        '''Como objetivo principal tenho a busca de iniciar uma carreira como programador, sempre prezando em trabalhar em um ambiente que eu possa contribuir e tenha reconhecimento e espaço para crescer e continuar contribuindo cada vez mais com a empresa em todos aspectos possíveis.''',
                                  ),
                                  titleSection(
                                      title: 'Dados Pessoais',
                                      color: Color(0xff334E50)),
                                  textSection(color: Colors.white, text: '''
 Nome: Caio Cesar de Lima Teixeira
 Idade: 26 anos
 Cidade: Gravataí, RS
 WhatsApp: (51) 99365-1286
 Casado - 3 filhos - Adventista de sétimo dia
 Github: github.com/CaioCesarLima
 Linkedin: caio-cesar-teixeira-b42680105
 Portfólio: Em construção
                                    ''')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * .5,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

Widget titleSection({String title, Color color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Text(
      title,
      style: GoogleFonts.bebasNeue(
        fontSize: 24,
        color: color,
      ),
    ),
  );
}

Widget textSection({String text, Color color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      text,
      textScaleFactor: ScreenUtil().scaleText,
      style: GoogleFonts.lato(
        fontSize: 10,
        color: color,
      ),
    ),
  );
}

Widget header(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 150,
            width: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(75)),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://scontent.fcxj6-1.fna.fbcdn.net/v/t1.0-9/90253039_3333920646637187_6371948785253220352_n.jpg?_nc_cat=108&_nc_sid=174925&_nc_eui2=AeHlNVZhkUogWwCbWTFzt5U4P1Ad8Ru8qaU_UB3xG7yppaNFbxWFYcoMX30zzX17Dd12Jd9lLk-ZF0QrUJRlsNO5&_nc_ohc=izZQ9hyFmucAX9VnTAm&_nc_ht=scontent.fcxj6-1.fna&oh=741d0cc5bce8dfaf8cb2872b96ffea28&oe=5FB58F1A',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "Caio Cesar",
            textScaleFactor: ScreenUtil().scaleText,
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 25),
          ),
        ),
        Text(
          "Teixeira",
          textScaleFactor: ScreenUtil().scaleText,
          style: GoogleFonts.abel(color: Colors.white, fontSize: 15),
        ),
      ],
    ),
  );
}
