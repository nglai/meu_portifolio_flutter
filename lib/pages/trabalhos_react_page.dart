import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class Trabalhos {
  final String titulo;
  final String descricao;
  final String link;
  final String foto;
  Trabalhos(this.titulo, this.descricao, this.link, this.foto);
}

class ReactPage extends StatefulWidget {
  @override
  _ReactPageState createState() => _ReactPageState();
}

class _ReactPageState extends State<ReactPage> {
  final trabalhos = <Trabalhos>[
    Trabalhos(
        'Calculadora',
        'Calculadora',
        'https://github.com/nglai/Calculadora-em-react',
        'assets/imagens/calculadora2.JPG'),
    Trabalhos('SoulHealh', 'Aplicativo que calcula IMC',
        'https://github.com/nglai/SoulHealth_react', 'assets/imagens/imc.JPG'),
    Trabalhos('SoulMili', 'Aplicativo que simula um banco',
        'https://github.com/nglai/Soul_Mili', 'assets/imagens/milli.JPG'),
    Trabalhos(
        'Moto Taxista',
        'Parte do moto taxista do aplicativo de corrida de moto',
        'https://github.com/nglai/App_moto_mototaxista',
        'assets/imagens/moto.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Meu portifólio'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              'React Native',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: trabalhos.length,
              itemBuilder: (BuildContext context, int index) {
                Trabalhos trabalho = trabalhos[index];

                return Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          trabalho.titulo,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          trabalho.descricao,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse(trabalho.link),
                            builder: (context, followLink) {
                              return TextButton(
                                  onPressed: followLink,
                                  child: Text('Link do projeto no GitHub'));
                            }),
                        Image.asset(trabalho.foto),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
