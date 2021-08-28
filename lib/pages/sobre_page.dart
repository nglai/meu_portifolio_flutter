import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


  final fotos = [
    'assets/imagens/familia.jpg',
    'assets/imagens/chocoba.jpg'
  ];

class SobrePage extends StatefulWidget {

  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(title: Text('Sobre mim'), centerTitle: true,),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/imagens/eu.jpg'), fit: BoxFit.contain),
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )
                ),
              ),
              SizedBox(height: 12,),
              Container(
                child: Column(
                  children: [
                    Text('Meu nome é Ng Lai. Tenho 26 anos. Nasci e moro em Salvador - Bahia.', style: TextStyle(fontSize: 22), textAlign: TextAlign.center,),
                    Text('Formada em farmácia. Entrando de cabeça em um novo mundo: programação.', style: TextStyle(fontSize: 22), textAlign: TextAlign.center,),
                    Text('Moro com minha mãe, meu irmão e minha cachorrinha Chocoba.', style: TextStyle(fontSize: 22), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Center(
        child: CarouselSlider(
          items: fotos
              .map((e) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    e, width: 300, height: 300,
                  ),
                ],
              ))
              .toList(),
          options: CarouselOptions(
            height: 350,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
      ),
              // Container(
              //   width: 200,
              //   child: Image.asset('assets/imagens/familia.jpg'),
              // ),
              // SizedBox(height: 8,),
              // Container(
              //   child: Text('Moro com minha mãe, meu irmão e minha cachorrinha Chocoba.', style: TextStyle(fontSize: 22), textAlign: TextAlign.center,),
              // ),
              // SizedBox(height: 8,),
              // Container(
              //   height: 200,
              //   width: 200,
              //   child: Image.asset('assets/imagens/chocoba.jpg'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}