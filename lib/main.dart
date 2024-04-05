import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _fraseGerada = 'Clique abaixo para gerar uma frase!';

  List<String> _frases = [
    'Os gatos são conhecidos por sua independência e habilidade de se limparem meticulosamente.',
    'Muitos gatos têm um fascínio por caixas de papelão, encontrando conforto e segurança no espaço confinado.', 
    'A audição dos gatos é extremamente sensível, permitindo-lhes ouvir sons que estão fora do alcance auditivo humano.', 
    'Os antigos egípcios reverenciavam os gatos, considerando-os protetores sagrados de seus lares e símbolos de graça e poise.',
    'Gatos têm a habilidade de pular até seis vezes a altura do seu próprio corpo, graças à sua poderosa musculatura das pernas.',
    'Quando um gato esfrega seu rosto em você, ele está marcando você com seus feromônios como parte de seu território.',
    'Os bigodes de um gato são tão sensíveis que podem detectar a menor mudança no ambiente ao seu redor.',
    'Gatos passam cerca de 70% de suas vidas dormindo, o que significa que um gato de 9 anos passou cerca de 6 anos dormindo.',
    'A ronronar de um gato não significa apenas que ele está feliz, mas também pode ser um sinal de que está nervoso ou com dor.',
    'Gatos têm uma visão noturna excepcional, permitindo-lhes ver em níveis de luz seis vezes mais baixos do que o necessário para os humanos.',
    'A cauda de um gato é usada para manter o equilíbrio e também como uma forma de comunicação para expressar seus sentimentos.',
    'Cada gato tem um padrão único de nariz, assim como as impressões digitais humanas.',
    'Gatos não têm um paladar para doces; eles são uma das poucas espécies que não sentem o sabor açucarado.',
    'A domesticação dos gatos remonta a cerca de 4.000 anos, quando começaram a conviver com os humanos para caçar pragas.',
    'Gatos possuem uma área especial em sua língua que é áspera para ajudar a limpar a pelagem e despedaçar a carne de suas presas.',
    'Quando um gato pisca lentamente para você, é um sinal de confiança e afeto, frequentemente chamado de "beijo de gato".',
    'A comunicação felina inclui mais de 100 diferentes sons vocais, muito mais do que os cães.',
    'Muitos gatos têm medo de água porque sua pelagem não seca rapidamente e pode se tornar pesada, o que ameaça seu instinto de sobrevivência.',
    'Os gatos usam o plantio de ervas, como a catnip, para relaxar ou estimular seus sentidos.',
    'A expectativa de vida de um gato doméstico tem aumentado, com muitos gatos vivendo até os 15 anos ou mais com os devidos cuidados.',
    'Gatos têm a capacidade de girar suas orelhas até 180 graus, usando-as como radar para captar sons em diferentes direções.',
    'A sociedade japonesa considera os gatos como símbolos de boa sorte, especialmente o "Maneki-neko", ou gato da sorte, que é comumente visto em lojas.',
    'Gatos possuem uma camada extra de células em seus olhos, chamada tapetum lucidum, que reflete a luz e melhora sua visão noturna.',
    'Alguns gatos têm polidactilia, uma condição genética que lhes dá um número extra de dedos, o que pode parecer que eles têm "luvas" ou "botas".',
    'A linguagem corporal dos gatos é complexa, incluindo o posicionamento das orelhas, o movimento da cauda e a postura do corpo para comunicar suas emoções.',
  ];

  void _gerarFrase(){

    setState(() {
      _fraseGerada = _frases[Random().nextInt(_frases.length)];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CuriousCat"),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            // decoration:BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/img/cat.jpg", height: 300,),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                IconButton(
                  icon: Icon(Icons.pets),
                  iconSize: 50,
                  color: Colors.green,
                  onPressed: _gerarFrase,
                )
              ],
            ),
          ),
        ));
  }
}
