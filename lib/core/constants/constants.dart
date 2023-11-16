import 'package:ai_trivia/app/data/model/trivia_category.dart';
import 'package:ai_trivia/app/data/model/trivia_type.dart';

typedef JsonObject = Map<String, Object?>;
typedef JsonDynamic = Map<String, dynamic>;

const kAmountOptions = ['5', '10', '15', '20', '25'];
const kDifficultyOptions = ['Easy', 'Medium', 'Hard'];

const ktriviaCategories = [
  TriviaCategory(id: 27, value: 'Animals'),
  TriviaCategory(id: 31, value: 'Anime'),
  TriviaCategory(id: 25, value: 'Art'),
  TriviaCategory(id: 16, value: 'Board game'),
  TriviaCategory(id: 10, value: 'Books'),
  TriviaCategory(id: 32, value: 'Cartoons'),
  TriviaCategory(id: 26, value: 'Celebrities'),
  TriviaCategory(id: 29, value: 'Comics'),
  TriviaCategory(id: 18, value: 'Computers'),
  TriviaCategory(id: 11, value: 'Film'),
  TriviaCategory(id: 30, value: 'Gadgets'),
  TriviaCategory(id: 9, value: 'General'),
  TriviaCategory(id: 22, value: 'Geography'),
  TriviaCategory(id: 23, value: 'History'),
  TriviaCategory(id: 19, value: 'Maths'),
  TriviaCategory(id: 12, value: 'Music'),
  TriviaCategory(id: 13, value: 'Musicals'),
  TriviaCategory(id: 20, value: 'Mythology'),
  TriviaCategory(id: 24, value: 'Politics'),
  TriviaCategory(id: 15, value: 'Video game'),
  TriviaCategory(id: 17, value: 'Science'),
  TriviaCategory(id: 21, value: 'Sports'),
  TriviaCategory(id: 14, value: 'Television'),
  TriviaCategory(id: 28, value: 'Vehicles'),
];

const ktriviaTypes = [
  TriviaType(id: 'multiple', value: 'Multiple choice'),
  TriviaType(id: 'boolean', value: 'True or False'),
];
