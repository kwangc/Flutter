import 'package:flutter/material.dart';
import 'package:estela_tony/screens/welcome_screen.dart';
import 'package:estela_tony/screens/login_screen.dart';
import 'package:estela_tony/screens/registration_screen.dart';
import 'package:estela_tony/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EstelaTony());
}

class EstelaTony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
