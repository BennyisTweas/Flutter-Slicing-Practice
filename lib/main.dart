import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Frame 1',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(231, 11, 137, 1),
            Color.fromRGBO(203, 0, 116, 1)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const LogoSection(
                image: 'images/logo.png',
              ),
              const SubHeaderSection(
                description:
                    'Learn Graphic and UI/UX designing in Hindi for free with live projects.',
              ),
              const LoginForm(),
              Container(
                margin: const EdgeInsets.only(
                  right: 38,
                  bottom: 42,
                ),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              const Text(
                'Don\'t have an account? Register now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const SocialSection(
                google: 'images/gmail.png',
                facebook: 'images/facebook.png',
                twitter: 'images/twitter.png',
              ),
              RichText(
                text: const TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(text: 'By signing up, you are agree with our '),
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100), // Add top margin here
      child: Image.asset(
        image,
        width: 177.29,
        height: 109.01,
        fit: BoxFit.cover,
      ),
    );
  }
}

class SubHeaderSection extends StatelessWidget {
  const SubHeaderSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 44,
        left: 44,
        top: 20,
      ),
      child: Text(
        description,
        textAlign: TextAlign.center,
        softWrap: true,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          right: 38,
          left: 38,
          top: 45,
          bottom: 22,
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(118, 118, 118, 0.56),
                    fontFamily: 'Roboto',
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(118, 118, 118, 0.56),
                    fontFamily: 'Roboto',
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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

class SocialSection extends StatelessWidget {
  const SocialSection(
      {super.key,
      required this.google,
      required this.facebook,
      required this.twitter});

  final String google, facebook, twitter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 42), // Top and bottom margin
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Align Row to center
          children: [
            Image.asset(google),
            const SizedBox(width: 25), // Margin between images
            Image.asset(facebook),
            const SizedBox(width: 25), // Margin between images
            Image.asset(twitter),
          ],
        ),
      ),
    );
  }
}
