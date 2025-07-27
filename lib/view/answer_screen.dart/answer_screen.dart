import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kids_quiz/view/categorie_screen/categorie_screen.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key, required this.answercount});
  final int answercount;
  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          children: [
            cloud(),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: Column(
                  spacing: 20,

                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: EdgeInsets.only(
                              bottom: index == 1 ? 50 : 0,
                            ),
                            child: Icon(
                              Icons.emoji_emotions,
                              color:
                                  index < starcount()
                                      ? Colors.amber
                                      : Colors.blueGrey,
                              size: index == 1 ? 80 : 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Great Job!",
                      style: GoogleFonts.baloo2(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Expanded(child: Image.asset("assets/images/boy.png")),
                Positioned(
                  bottom: 7,
                  left: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Colors.amber[500],
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategorieScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Home",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  int starcount() {
    double persntage = (widget.answercount / 10) * 100;
    if (persntage > 80) {
      return 3;
    }
    if (persntage > 50) {
      return 2;
    }
    if (persntage > 30) {
      return 1;
    }
    return 0;
  }
}

Column cloud() {
  return Column(
    children: [
      Row(
        children: [
          Image.asset('assets/images/cloud.png', width: 100),
          SizedBox(width: 180),
          Image.asset('assets/images/cloud.png', width: 100),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/images/cloud.png', width: 100)],
      ),
    ],
  );
}
