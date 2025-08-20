import 'ninja.dart';

enum UchirraSkillEnum {
  sharingan("sharingan"),
  mangekyoSharingan("mangekyo sharingan"),
  susanoo("susanoo"),
  genjutsu("genjutsu"),
  taijutsu("taijutsu");

  final dynamic name;
  const UchirraSkillEnum(this.name);
}


class Uchirra extends Ninja {

  List<UchirraSkillEnum> skills;

  Uchirra({
    required super.name,
    required super.universe,
    required super.gender,
    super.isProtagonist = false,
    super.childrenCount = 0,
    required super.village,
    required super.role,
    required super.natureTransformations,
    required this.skills,
  });

  @override
  String getDescription() {
    return 
      "${super.getDescription()} ${getPronoun()}'s from clan Uchirra, with the following powers released: ${
        skills.map((skill) => skill.name).join(", ")
      }.";
  }

  @override
  String toString() {
    return '''
${super.toString()}
Skills: $skills
''';
  }
}