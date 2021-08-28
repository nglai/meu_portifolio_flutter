import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './metas_page.dart';
import 'trabalhos_react_page.dart';
import 'trabalhos_html_page.dart';
import './sobre_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  abrirWhatsApp() async {
  var whatsappUrl = "https://api.whatsapp.com/send?phone=5571982372479&text=Ol%C3%A1";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Meu Portifólio'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/imagens/nyancat.gif')),
                gradient: LinearGradient(
                    colors: [Colors.pink.shade100, Colors.pinkAccent]),
              ),
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text('Sobre mim'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SobrePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.work_outline),
              title: Text('Meu Portifólio - Html/Css'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HtmlPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.work_outline),
              title: Text('Meu Portifólio - React Native'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReactPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Metas para o futuro'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MetasPage()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'Bem vindo(a)!',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Image.asset('assets/imagens/welcome.gif'),
            ),
            Container(
              child: Text(
                'Navegue pelo menu e conheça um pouco sobre mim!',
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(FontAwesomeIcons.whatsapp, size: 50, color: Colors.green,),
                onPressed: () {
                  abrirWhatsApp();
                },
              ),
            ),
            Container(
              width: 300,
              child: Text(
                'Para me mandar uma mensagem no WhatsApp basta clicar no ícone acima!',
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
