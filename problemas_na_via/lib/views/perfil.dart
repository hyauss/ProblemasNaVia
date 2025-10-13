//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Perfil',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),

            const SizedBox(height: 40),

            // Botões lado a lado
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Suas denúncias
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/lista_denuncias');
                      },
                      child: const Text(
                        'Suas denuncias',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Gerar Relatório
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Download em andamento!')),
                        );
                      },
                      icon: const Icon(Icons.download, size: 20),
                      label: const Text(
                        'Gerar Relatório',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Botão de Logout centralizado
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                foregroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
              ),
              onPressed: () {
                // ação de logout
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
