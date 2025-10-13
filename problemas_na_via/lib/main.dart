//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';
import 'package:problemas_na_via/views/avaliacao.dart';
import 'package:problemas_na_via/views/cadastro.dart';
import 'package:problemas_na_via/views/categoria.dart';
import 'package:problemas_na_via/views/denuncia.dart';
import 'package:problemas_na_via/views/detalhes.dart';
import 'package:problemas_na_via/views/home.dart';
import 'package:problemas_na_via/views/inserir_local_avaliacao.dart';
import 'package:problemas_na_via/views/inserir_local_denuncia.dart';
import 'package:problemas_na_via/views/lista_denuncias.dart';
import 'package:problemas_na_via/views/login.dart';
import 'package:problemas_na_via/views/perfil.dart';
import 'package:problemas_na_via/views/preencher_avaliacao.dart';
import 'package:problemas_na_via/views/preencher_denuncia.dart';
import 'package:problemas_na_via/views/preencher_denuncia_outro.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), 
        '/home': (context) => HomePage(),
        '/cadastro': (context) => CadastroPage(),
        '/perfil': (context) => PerfilPage(),
        '/lista_denuncias':(context) => DenunciasPage(),
        '/detalhes':(context) => DetalhesDenunciaPage(),
        '/denuncia': (context) => DenunciaPage(),
        '/avaliacao': (context) => AvaliacaoPage(),
        '/inserir_local_denuncia': (context) => InserirLocalDenuncia(),
        '/inserir_local_avaliacao': (context) => InserirLocalAvaliacao(),
        '/preencher_avaliacao': (context) => PreencherAvaliacaoPage(),
        '/categoria': (context) => CategoriaPage(),
        '/preencher_denuncia_outro': (context) => PreencherDenunciaOutroPage(),
        '/preencher_denuncia': (context) => PreencherDenunciaPage(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
   
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(
          widget.title,
        ),
      ),
      body: Center(
  
        child: Column(
     
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}