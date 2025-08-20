import 'ninja.dart';

enum BijuEnum {
  shukaku("Shukaku"),
  matatabi("Matatabi"),
  isobu("Isobu"),
  sonGoku("Son Goku"),
  kokuo("Kokuo"),
  saiken("Saiken"),
  choumei("Choumei"),
  gyuki("Gyuki"),
  kurama("Kurama"),
  juubi("Juubi");

  final dynamic name;
  const BijuEnum(this.name);
}

class Jinchuuriki {
  final Ninja ninja;
  BijuEnum biju;


  Jinchuuriki(this.ninja, {
    required this.biju,
  });

  String getDescription() {
    return 
      "${ninja.getDescription()} ${ninja.getPronoun()}'s the Jinchuuriki of ${biju.name}.";
  }

  @override
  String toString() {
    return '''
${ninja.toString()}
Biju: $biju
''';
  }
}