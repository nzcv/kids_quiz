import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_quiz/core/constant/toddlerQuizDB.dart';
import 'package:kids_quiz/view/qustion_screen/question_screen.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({super.key});

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  List<String> imagepath = [
    Toddlerquizdb.animals[0].imageUrl,
    Toddlerquizdb.colors[0].imageUrl,
    Toddlerquizdb.fruits[0].imageUrl,
    Toddlerquizdb.shapes[0].imageUrl,
  ];
  List<String> title = ["ANIMALS", "COLORS", "FRUITS", "VEHICALES"];
  int? clickedindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Categories",
                  style: GoogleFonts.baloo2(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: .7,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      clickedindex = index;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  QuestionScreen(categoryIndex: clickedindex!),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            imagepath[index],
                            // scale: 50,
                          ),
                          Text(
                            title[index],
                            style: GoogleFonts.baloo2(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
