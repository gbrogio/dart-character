import './character.dart';
import './universes/naruto/ninja.dart';
import './universes/naruto/uchirra.dart';
import './universes/naruto/jinchuuriki.dart';

void main() {
  Uchirra uchirraMadara = Uchirra(
    name: 'Uchirra Madara',
    gender: CharacterGenderEnum.male,
    universe: 'Naruto',
    isProtagonist: false,
    role: NinjaRolesEnum.sennin,
    village: "Leaf Village",
    skills: [
      UchirraSkillEnum.genjutsu,
      UchirraSkillEnum.sharingan,
      UchirraSkillEnum.mangekyoSharingan,
      UchirraSkillEnum.susanoo,
      UchirraSkillEnum.taijutsu,
    ],
    natureTransformations: [
      NinjaNatureTransformationEnum.katon,
    ]
  );

  Jinchuuriki uchirraMadaraJinchuuriki = Jinchuuriki(uchirraMadara, biju: BijuEnum.juubi);

  print(uchirraMadaraJinchuuriki.toString());
}
