//Gabriel Barros Albertini
//Gustavo Luigi Chao Pinotti
//Rafael de Menezes Ros
//Vinicius Alves Marques

import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();

  void _onConfirmar() {
    final nome = nomeController.text;
    final _ = cpfController.text;
    final senha = senhaController.text;
    final confirmarSenha = confirmarSenhaController.text;

    if (senha != confirmarSenha) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('OPS: Senhas diferentes')),
      );
      return;
    }

    // Aqui você pode adicionar sua lógica de cadastro
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Cadastro realizado com sucesso! Bem-vindo, $nome')),
    );

    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Center(
                child: Text(
                  'Cadastro',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Text('Nome', style: TextStyle(fontSize: 16)),
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  hintText: 'Value',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text('CPF', style: TextStyle(fontSize: 16)),
              TextField(
                controller: cpfController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Value',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Senha', style: TextStyle(fontSize: 16)),
              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Value',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Confirmar Senha', style: TextStyle(fontSize: 16)),
              TextField(
                controller: confirmarSenhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Value',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: 180,
                  height: 50,
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
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}