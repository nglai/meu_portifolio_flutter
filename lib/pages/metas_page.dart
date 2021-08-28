import 'package:flutter/material.dart';

class MetasPage extends StatefulWidget {

  @override
  _MetasPageState createState() => _MetasPageState();
}

class _MetasPageState extends State<MetasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Metas'), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                child: Image.asset('assets/imagens/fofinho.gif'),
              ),
            Container(
                child: Column(
                  children: [
                    Text(
                      'Me tornar uma programadora júnior e futuramente senior!',
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Viajar pelo mundo!',
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Talvez morar no Canadá!',
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Ser feliz!',
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                child: Image.asset('assets/imagens/happy.gif'),
              ),
          ],
        ),
      ),
    );
  }
}