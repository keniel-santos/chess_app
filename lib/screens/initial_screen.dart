import 'package:chess_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  InitialScreenState createState() => InitialScreenState();
}

class InitialScreenState extends State<InitialScreen> {
  // Controladores de texto para os campos de usuário e senha
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Sempre que o widget for destruído, liberar os controladores
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Tela inicial com boas-vindas e opções de Login ou Cadastro
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 202, 202),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Título da tela de boas-vindas com estilo personalizado
                Text(
                  'Bem-vindo ao Sketchess!',
                  style: GoogleFonts.merriweather(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                // Logo principal da aplicação
                Image.asset('assets/sketchess_logo_login.png', height: 270),
                SizedBox(height: 60),
                // Botões para Login e Cadastro
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      // Abre o showDialog() de Login
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => AlertDialog(
                                  title: Center(child: const Text('Login')),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Usuário',
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          labelText: 'Senha',
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed:
                                          () => Navigator.of(context).pop(),
                                      child: Text(
                                        'Cancelar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Entrar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset('assets/login_icon.png', height: 25),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      // Abre o showDialog() de Cadastro
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Cadastre-se",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset(
                              'assets/registration_icon.png',
                              height: 25,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 90),
                InkWell(
                  onTap: () {
                    final String appInfoText =
                        '''O Sketchess é um app criado para o melhor acompanhamento da carreira enxadrística de seus usuários, focando numa usabilidade semelhante à de um sketchbook, com imagens, dados de torneios, desempenho, anotações, e etc.

Desenvolvedor: Keniel Robert da Silva Santos, apreciador nato do Jogo dos Reis.''';
                    showDialog(
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: Center(child: const Text('Sobre o app:')),
                            content: Text(
                              appInfoText,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(
                                  'Fechar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                    );
                  },
                  child: Image.asset(
                    'assets/info_icon.png',
                    height: 45,
                    width: 45,
                    fit: BoxFit.contain,
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
