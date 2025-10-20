//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String? filtroSelecionado;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Topo com título e ícone de perfil
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                  ), // espaço para alinhar com o ícone da direita
                  const Text('Você está aqui!', style: TextStyle(fontSize: 24)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    IconButton(
                    icon: const Icon(Icons.account_circle, size: 30),
                    onPressed: () {
                      // Ação para abrir perfil
                      //ROTA DO PERFIL
                      Navigator.pushNamed(context, '/perfil');
                    },
                  ),
                  Text("Nome")
                   ], 
                  )
                ],
              ),
            ),

            // Campo de logo + busca
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child:
      // Campo de busca
      TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: 'Buscar endereço',
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
),
const Divider(),


            // Filtros
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.filter_alt_outlined),
                  border: InputBorder.none,
                ),
                hint: const Text('Filtros'),
                initialValue: filtroSelecionado,
                onChanged: (String? novoValor) {
                  setState(() {
                    filtroSelecionado = novoValor;
                  });
                },
                items: ['Metrô', 'Ponto de Onibûs', 'CPTM', "Monotrilho","Ciclofaixa","Denúncias","Avaliações"]
                    .map(
                      (opcao) =>
                          DropdownMenuItem(value: opcao, child: Text(opcao)),
                    )
                    .toList(),
              ),
            ),
            const Divider(),

            const SizedBox(height: 16),

            // Mapa circular
            ClipOval(
              child: Image.asset(
                'assets/mapa.png', // você pode trocar por um widget de mapa real depois
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'O que deseja realizar?',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            // Botões
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/denuncia');
                      },
                      child: const Text('Denúncia'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/avaliacao');
                      },
                      child: const Text('Avaliação'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
