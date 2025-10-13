//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';

class PreencherDenunciaPage extends StatefulWidget {
  const PreencherDenunciaPage({super.key});

  @override
  State<PreencherDenunciaPage> createState() => _PreencherDenunciaPageState();
}

class _PreencherDenunciaPageState extends State<PreencherDenunciaPage> {
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();

  void _onConfirmar() {
    // Aqui você pode salvar a denúncia ou enviar os dados
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Denúncia enviada com sucesso!')),
    );

    // Depois de confirmar, vai para a tela Home
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text(
          'Preencher Denúncia',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Descrição',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: descricaoController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Descreva o problema encontrado.',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Inserir arquivo
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Inserir arquivo'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt_outlined),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Câmera')),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Botão confirmar
            Center(
              child: SizedBox(
                width: 180,
                height: 45,
                child: ElevatedButton(
                  onPressed: _onConfirmar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4D94FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'confirmar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
