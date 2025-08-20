
enum CharacterGenderEnum {
  male,
  female
}

class Character {
  String name;
  String universe;
  CharacterGenderEnum gender;
  bool isProtagonist;
  int childrenCount;

  Character({
    required this.name,
    required this.universe,
    required this.gender,
    this.isProtagonist = false,
    this.childrenCount = 0
  });

  String getPronoun() {
    return gender == CharacterGenderEnum.male ? "He" : "She";
  }

  String getDescription() {
    String message = "This is $name from $universe universe.";

    if (isProtagonist) {
      message += " ${getPronoun()}'s protagonist of the history.";
    }

    if (childrenCount == 0) {
      message += " And have no children at all.";
    } else {
      message += " And have $childrenCount children.";
    }
    
    return message; 
  }

  @override
  String toString() {
    return '''
==== Character Details ====
Name: $name
Gender: $gender
Universe: $universe
Is Protagonist: $isProtagonist
Children Count: $childrenCount
''';
  }
}