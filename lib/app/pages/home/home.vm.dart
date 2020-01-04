import 'dart:math';

class HomeVm {
  List<String> _phrases;

  HomeVm() {
    _phrases = ["Frase 1", "Frase 2", "Frase 3", "Frase 4"];
  }

  String generateNewPhrase() => _phrases[Random().nextInt(_phrases.length)];
}
