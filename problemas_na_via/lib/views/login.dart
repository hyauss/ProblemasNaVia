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

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('CPF: $cpf\nSenha: $senha')));

    Navigator.pushNamed(context, '/home');
  }

  void _onCriarConta() {
    Navigator.pushNamed(context, '/cadastro');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          // Evita overflow em telas pequenas
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),

                // Logo + título
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.asset(
                          'assets/logo.jpeg',
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 70),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            offset: Offset(
                              0,
                              4,
                            ), // deslocamento da sombra (x, y)
                            blurRadius: 10, // intensidade do desfoque
                            color: Colors.black26, // cor da sombra
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 60),

                // Campo CPF
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('CPF', style: TextStyle(fontSize: 16)),
                ),
                TextField(
                  controller: cpfController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Digite seu CPF',
                    border: UnderlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                // Campo Senha
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Senha', style: TextStyle(fontSize: 16)),
                ),
                TextField(
                  controller: senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Digite sua senha',
                    border: UnderlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 50),

                // Botões
                SizedBox(
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
                      'Confirmar',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: _onCriarConta,
                  child: const Text(
                    'Criar conta?',
                    style: TextStyle(color: Color(0xFF4D94FF), fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
