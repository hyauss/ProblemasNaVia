import 'package:flutter/material.dart';

class AvaliacaoPage extends StatelessWidget {
  const AvaliacaoPage({super.key});

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
                      Navigator.pushNamed(context, '/home');       
                    },
                  ),
                  const Text(
                    'Você está aqui!',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(width: 40), // espaço para alinhar com o ícone da direita
                ],
              ),
            ),
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
              'Avaliação:',
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            // Botões
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const SizedBox(height: 40), // espaçamento vertical
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
                        Navigator.pushNamed(context, '/no_local_atual');
                      },
                      child: const Text('No local atual'),
                    ),
                  ),
                  const SizedBox(height: 40),
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
                        Navigator.pushNamed(context, '/inserir_local_avaliacao');
                      },
                      child: const Text('inserir local'),
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
