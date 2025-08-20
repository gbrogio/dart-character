import '../../character.dart';

enum NinjaRolesEnum {
  chunin("chunin"),
  jonin("jonin"),
  kage("kage"),
  anbu("anbu"),
  jinchuuriki("jinchuuriki"),
  medicalNin("medical-nin"),
  sennin("sennin");

  final dynamic name;
  const NinjaRolesEnum(this.name);
}

enum NinjaNatureTransformationEnum {
  katon,
  futon,
  raiton,
  doton,
  suiton,
  youton,
  mokuton,
}

class Ninja extends Character {
  String village;
  NinjaRolesEnum role;
  List<NinjaNatureTransformationEnum> natureTransformations;

  Ninja({
    required super.name,
    required super.universe,
    required super.gender,
    super.isProtagonist = false,
    super.childrenCount = 0,
    required this.village,
    required this.role,
    required this.natureTransformations,
  });

  @override
  String getDescription() {
    return 
      "${super.getDescription()} From village $village, have ${
        role.name
      } role. And have domain of theses nature transformations: ${
        natureTransformations.map((e) => e.name).join(", ")
      }.";
  }

  @override
  String toString() {
    return '''
${super.toString()}
Village: $village
Role: $role
Nature Transformations: $natureTransformations
''';
  }
}
