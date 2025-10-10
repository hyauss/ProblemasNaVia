import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  void _onConfirmar() {
    final cpf = cpfController.text;
    final senha = senhaController.text;

    // Aqui você pode colocar sua lógica de login
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('CPF: $cpf\nSenha: $senha')),
    );
    Navigator.pushNamed(context, '/home');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                'CPF',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                controller: cpfController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Value',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Senha',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                controller: senhaController,
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
