import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_quiz/core/constant/toddlerQuizDB.dart';
import 'package:kids_quiz/models/quiestion_model.dart';
import 'package:kids_quiz/view/answer_screen.dart/answer_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class QuestionScreen extends StatefulWidget {
  final int categoryIndex;

  const QuestionScreen({super.key, required this.categoryIndex});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final CountDownController controller = CountDownController();
  List categories = [
    Toddlerquizdb.animals,
    Toddlerquizdb.colors,
    Toddlerquizdb.fruits,
    Toddlerquizdb.shapes,
  ];
  int questionindex = 0;
  int? clickedindex;
  int answercount = 0;
  int get Categoryindex => widget.categoryIndex;
  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = categories[Categoryindex][questionindex];

    return Scaffold(
      backgroundColor: Color(0xFFFFCC98),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Quiz",
                        style: GoogleFonts.baloo2(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    child: CircularCountDownTimer(
                      controller: controller,
                      width: 60,
                      height: 60,
                      duration: 30,
                      fillColor: Colors.white,
                      ringColor: Colors.orange,
                      isReverse: true,
                      isReverseAnimation: true,
                      onComplete: () {
                        if (questionindex <
                            categories[Categoryindex].length - 1) {
                          questionindex++;
                          clickedindex = null;

                          setState(() {});
                          controller.restart(duration: 30);
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      AnswerScreen(answercount: answercount),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      currentQuestion.question,
                      style: GoogleFonts.baloo2(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),

                    Image.asset(currentQuestion.imageUrl),
                    Column(
                      children: List.generate(
                        4,
                        (index) => OptionCard(
                          color: _cardcolor(index),
                          value: currentQuestion.options[index],
                          onTap: () {
                            if (clickedindex == null) {
                              clickedindex = index;

                              if (clickedindex == currentQuestion.answerindex) {
                                answercount++;
                              }
                              setState(() {});
                              Future.delayed(Duration(seconds: 3), () {
                                clickedindex = null;
                                if (questionindex <
                                    categories[Categoryindex].length - 1) {
                                  questionindex++;
                                  setState(() {});
                                } else {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => AnswerScreen(
                                            answercount: answercount,
                                          ),
                                    ),
                                  );
                                }
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              LinearPercentIndicator(
                width: 310,
                lineHeight: 14.0,
                percent: questionindex / (categories[Categoryindex].length + 1),
                backgroundColor: Colors.white,
                progressColor: Colors.orangeAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _cardcolor(int index) {
    QuizQuestion currentQuestion = categories[Categoryindex][questionindex];
    if (clickedindex != null && index == currentQuestion.answerindex) {
      return Colors.greenAccent;
    }
    if (index == clickedindex) {
      if (clickedindex != currentQuestion.answerindex) {
        return Colors.redAccent;
      }
    }
    return Colors.cyan;
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.value,
    required this.color,
    this.onTap,
  });
  final String value;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: color,
          ),
          child: Text(
            value,
            style: GoogleFonts.baloo2(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
