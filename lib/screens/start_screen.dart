import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF80E7A3), Color(0xFF184F75)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50),
              Padding(
                padding:
                    EdgeInsets.only(top: 0), // Reduce top padding as needed
                child: Container(
                  width: 244,
                  height: 243,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(120),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'A stress management app',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Sansita Swashed',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Sansita Swashed',
                    fontWeight: FontWeight.w700,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 76, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Sansita Swashed',
                    fontWeight: FontWeight.w700,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 66, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
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
