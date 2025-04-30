import 'package:chess_app/screens/login_screen.dart';
import 'package:chess_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

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
                SizedBox(height: 30),
                // Botões para navegar para as telas de Login e Cadastro
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      // Navega para a tela de Login
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text("Login", style: TextStyle(fontSize: 20),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      // Navega para a tela de Cadastro
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterScreen()),
                          );
                        },
                        child: const Text("Cadastre-se", style: TextStyle(fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
