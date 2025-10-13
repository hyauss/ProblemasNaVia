import 'package:flutter/material.dart';

class CategoriaPage extends StatelessWidget {
  const CategoriaPage({super.key});

  void _onCategoriaSelecionada(BuildContext context, String categoria) {
    if (categoria == 'Outro') {
      // vai para uma página diferente
      Navigator.pushNamed(context, '/preencher_denuncia_outro');
    } else {
      // vai para a tela de selecionar endereço
      Navigator.pushNamed(context, '/preencher_denuncia');
    }
  }

  @override
  Widget build(BuildContext context) {
    final categorias = [
      'Vandalismo',
      'Atraso',
      'Falta de Acessibilidade',
      'Via irregular',
      'Problemas na iluminação',
      'Outro',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text(
          'Selecione a categoria',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // duas colunas
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.6, // formato retangular
          ),
          itemCount: categorias.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _onCategoriaSelecionada(context, categorias[index]),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    categorias[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
