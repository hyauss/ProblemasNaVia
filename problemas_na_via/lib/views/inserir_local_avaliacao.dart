//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';

class InserirLocalAvaliacao extends StatelessWidget {
  const InserirLocalAvaliacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Topo voltar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, size: 30),
                    onPressed: () {
                      Navigator.pushNamed(context, '/avaliacao');       
                    },
                  ),
                  const Text(
                    'Selecione o Endereço',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(width: 40), // espaço para alinhar com o ícone da direita
                ],
              ),
            ),

            // Campo de busca
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Buscar endereço',
                  border: InputBorder.none,
                ),
              ),
            ),
            const Divider(),

            // Mapa circular
            ClipOval(
              child: Image.asset(
                'assets/mapa.png', // você pode trocar por um widget de mapa real depois
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            // Botões
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const SizedBox(height: 80), // espaçamento vertical
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
                        Navigator.pushNamed(context, '/preencher_avaliacao');
                      },
                      child: const Text('Confirmar endereço'),
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
