import 'package:kids_quiz/models/quiestion_model.dart';

class DummyDb {
  static Map<String, List<QuizQuestion>> toddlerQuizDB = {
    "Animals": [
      QuizQuestion(
        question: "Which animal says 'Moo'?",
        options: ["Cat", "Dog", "Cow", "Sheep"],
        answerindex: 2,
        imageUrl: "assets/images/cow.2.png",
      ),
      QuizQuestion(
        question: "Which animal barks?",
        options: ["Duck", "Cat", "Dog", "Elephant"],
        answerindex: 2,
        imageUrl: "assets/images/dog.1.png",
      ),
      QuizQuestion(
        question: "Which animal purrs?",
        options: ["Dog", "Elephant", "Cat", "Lion"],
        answerindex: 2,
        imageUrl: "assets/images/cat.1.png",
      ),
      QuizQuestion(
        question: "Which animal hops?",
        options: ["Horse", "Frog", "Cow", "Goat"],
        answerindex: 1,
        imageUrl: "assets/images/frog..png",
      ),
      QuizQuestion(
        question: "Which animal has a trunk?",
        options: ["Dog", "Lion", "Elephant", "Cat"],
        answerindex: 2,
        imageUrl: "assets/images/elephant.1.png",
      ),
      QuizQuestion(
        question: "Which one roars?",
        options: ["Sheep", "Duck", "Lion", "Horse"],
        answerindex: 2,
        imageUrl: "assets/images/lion.1.png",
      ),
      QuizQuestion(
        question: "Which animal swims?",
        options: ["Pig", "Fish", "Tiger", "Cat"],
        answerindex: 1,
        imageUrl: "assets/images/fish..png",
      ),
      QuizQuestion(
        question: "Which one gives wool?",
        options: ["Goat", "Cow", "Sheep", "Camel"],
        answerindex: 2,
        imageUrl: "assets/images/sheep..png",
      ),
      QuizQuestion(
        question: "Which one quacks?",
        options: ["Duck", "Dog", "Cat", "Cow"],
        answerindex: 0,
        imageUrl: "assets/images/duck..png",
      ),
      QuizQuestion(
        question: "Which one neighs?",
        options: ["Elephant", "Horse", "Sheep", "Cat"],
        answerindex: 1,
        imageUrl: "assets/images/horse.1.png",
      ),
    ],
    "Fruits": [
      QuizQuestion(
        question: "Which one is red?",
        options: ["Banana", "Apple", "Grape", "Orange"],
        answerindex: 1,
        imageUrl: "assets/images/apple..png",
      ),
      QuizQuestion(
        question: "Which is yellow and long?",
        options: ["Banana", "Orange", "Mango", "Strawberry"],
        answerindex: 0,
        imageUrl: "assets/images/bannana.png",
      ),
      QuizQuestion(
        question: "Which fruit is orange in color?",
        options: ["Mango", "Apple", "Orange", "Banana"],
        answerindex: 2,
        imageUrl: "assets/images/orange.png",
      ),
      QuizQuestion(
        question: "Which fruit is small and purple?",
        options: ["Apple", "Grape", "Pineapple", "Mango"],
        answerindex: 1,
        imageUrl: "assets/images/grape..png",
      ),
      QuizQuestion(
        question: "Which fruit is pink inside?",
        options: ["Apple", "Watermelon", "Orange", "Banana"],
        answerindex: 1,
        imageUrl: "assets/images/watermelon..png",
      ),
      QuizQuestion(
        question: "Which one is green outside?",
        options: ["Apple", "Strawberry", "Watermelon", "Banana"],
        answerindex: 2,
        imageUrl: "assets/images/watermelon..png",
      ),
      QuizQuestion(
        question: "Which one is juicy and tropical?",
        options: ["Grape", "Pinapple", "Apple", "Banana"],
        answerindex: 1,
        imageUrl: "assets/images/pinapple..png",
      ),
      QuizQuestion(
        question: "Which fruit is soft and sweet?",
        options: ["Mango", "Pear", "Lemon", "Guava"],
        answerindex: 0,
        imageUrl: "assets/images/mango..png",
      ),
      QuizQuestion(
        question: "Which fruit has seeds outside?",
        options: ["Strawberry", "Apple", "Grape", "Orange"],
        answerindex: 0,
        imageUrl: "assets/images/straberry..png",
      ),
      QuizQuestion(
        question: "Which one is sour and yellow?",
        options: ["Lemon", "Banana", "Apple", "Pear"],
        answerindex: 0,
        imageUrl: "assets/images/lemon..png",
      ),
    ],
    "Vehicles": [
      QuizQuestion(
        question: "Which one has two wheels?",
        options: ["Bike", "Car", "Truck", "Bus"],
        answerindex: 0,
        imageUrl: "assets/images/bike..png",
      ),
      QuizQuestion(
        question: "Which one flies in the sky?",
        options: ["Train", "Helicopter", "Car", "Bus"],
        answerindex: 1,
        imageUrl: "https://i.ibb.co/SsF3BVC/helicopter.png",
      ),
      QuizQuestion(
        question: "Which one has wings?",
        options: ["Bus", "Bike", "Airplane", "Truck"],
        answerindex: 2,
        imageUrl: "https://i.ibb.co/BTMHVgk/airplane.png",
      ),
      QuizQuestion(
        question: "Which one goes on rails?",
        options: ["Train", "Bus", "Bike", "Car"],
        answerindex: 0,
        imageUrl: "https://i.ibb.co/Yh4yhs3/train.png",
      ),
      QuizQuestion(
        question: "Which one is big and yellow?",
        options: ["Car", "Bike", "School Bus", "Train"],
        answerindex: 2,
        imageUrl: "https://i.ibb.co/ySyM9Yv/schoolbus.png",
      ),
      QuizQuestion(
        question: "Which one has siren?",
        options: ["Police Car", "Bus", "Truck", "Bike"],
        answerindex: 0,
        imageUrl: "https://i.ibb.co/ZcgGB8g/policecar.png",
      ),
      QuizQuestion(
        question: "Which one carries goods?",
        options: ["Truck", "Car", "Bus", "Bike"],
        answerindex: 0,
        imageUrl: "https://i.ibb.co/3RmGqV3/truck.png",
      ),
      QuizQuestion(
        question: "Which one has lights and horn?",
        options: ["Car", "Bus", "Boat", "Bike"],
        answerindex: 0,
        imageUrl: "https://i.ibb.co/gjw6VLx/car.png",
      ),
      QuizQuestion(
        question: "Which one floats?",
        options: ["Car", "Boat", "Train", "Bus"],
        answerindex: 1,
        imageUrl: "https://i.ibb.co/0rB5fgW/boat.png",
      ),
      QuizQuestion(
        question: "Which one takes you to space?",
        options: ["Helicopter", "Plane", "Rocket", "Bus"],
        answerindex: 2,
        imageUrl: "https://i.ibb.co/fkSfM9m/rocket.png",
      ),
    ],
    "Colors": [
      QuizQuestion(
        question: "Which one is red?",
        options: ["Red", "Green", "Blue", "Yellow"],
        answerindex: 0,
        imageUrl: "assets/images/redcolor..png",
      ),
      QuizQuestion(
        question: "Which one is the color of banana?",
        options: ["Blue", "Yellow", "Pink", "Red"],
        answerindex: 1,
        imageUrl: "https://i.ibb.co/Jz6RWWR/yellow.png",
      ),
      QuizQuestion(
        question: "Which color is like grass?",
        options: ["Orange", "Purple", "Green", "Brown"],
        answerindex: 2,
        imageUrl: "https://i.ibb.co/h1X3bFL/green.png",
      ),
      QuizQuestion(
        question: "Which color is the sky?",
        options: ["Blue", "Yellow", "Black", "Red"],
        answerindex: 0,
        imageUrl: "https://i.ibb.co/kqdpQvP/blue.png",
      ),
      QuizQuestion(
        question: "Which color is made by mixing red and white?",
        options: ["Purple", "Pink", "Blue", "Orange"],
        answerindex: 1,
        imageUrl: "https://i.ibb.co/3k4bwSc/pink.png",
      ),
      QuizQuestion(
        question: "Which color is like chocolate?",
        options: ["Brown", "Black", "Orange", "Green"],
        answerindex: 0,
        imageUrl: "https://i.ibb.co/txg68CD/brown.png",
      ),
      QuizQuestion(
        question: "Which one is dark?",
        options: ["White", "Yellow", "Black", "Pink"],
        answerindex: 2,
        imageUrl: "https://i.ibb.co/S7VCyn2/black.png",
      ),
      QuizQuestion(
        question: "Which is the lightest color?",
        options: ["Black", "Blue", "White", "Brown"],
        answerindex: 2,
        imageUrl: "https://i.ibb.co/8K0trmm/white.png",
      ),
      QuizQuestion(
        question: "Which one is a mix of red and yellow?",
        options: ["Green", "Orange", "Blue", "Pink"],
        answerindex: 1,
        imageUrl: "https://i.ibb.co/nChxY0W/orange.png",
      ),
      QuizQuestion(
        question: "Which one is royal?",
        options: ["Red", "Purple", "Yellow", "White"],
        answerindex: 1,
        imageUrl: "https://i.ibb.co/qjnXJtW/purple.png",
      ),
    ],
  };
}
