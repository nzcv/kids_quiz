class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerindex;
  final String imageUrl;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.answerindex,
    required this.imageUrl,
  });
}
