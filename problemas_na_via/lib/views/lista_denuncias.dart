//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';

class DenunciasPage extends StatelessWidget {
  const DenunciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista simulada de denúncias
    final denuncias = [
      {'data': '22/05/25', 'status': 'concluida'},
      {'data': '21/05/24', 'status': 'rejeitada'},
      {'data': '10/05/23', 'status': 'pendente'},
    ];

    Icon _iconeStatus(String status) {
      switch (status) {
        case 'concluida':
          return const Icon(Icons.check, color: Colors.green, size: 24);
        case 'rejeitada':
          return const Icon(Icons.close, color: Colors.red, size: 24);
        default:
          return const Icon(Icons.more_horiz, color: Colors.amber, size: 24);
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Ícone de voltar
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

            const SizedBox(height: 8),

            // Título
            const Text(
              'Denuncias',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 24),

            // Ícone grande do perfil
            const Icon(
              Icons.account_circle_outlined,
              size: 180,
              color: Colors.blue,
            ),

            const SizedBox(height: 8),

            // Nome do usuário
            const Text(
              'Nome',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 30),

            // Lista de denúncias
            Expanded(
              child: ListView.builder(
                itemCount: denuncias.length,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: (context, index) {
                  final denuncia = denuncias[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      title: Text(
                        'Denuncia - ${denuncia['data']}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      trailing: _iconeStatus(denuncia['status'] as String),
                      onTap: () {
                        Navigator.pushNamed(context, '/detalhes');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
