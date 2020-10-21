import 'package:flutter/material.dart';

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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.blueAccent,
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
                            color: Colors.blueAccent,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.blueGrey,
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
