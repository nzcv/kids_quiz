import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_quiz/view/categorie_screen/categorie_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,

            child: Image.asset(
              "assets/images/kids_quiz.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: 110,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Toddler",
                  style: GoogleFonts.baloo2(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  "Kids",
                  style: GoogleFonts.baloo2(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "Quiz",
                  style: GoogleFonts.baloo2(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 70),
                backgroundColor: Colors.orange[500],
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CategorieScreen()),
                );
              },
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
