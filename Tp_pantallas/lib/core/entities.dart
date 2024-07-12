class Materia {
  final String name;
  final String description;
  final String? image;
  final String? image2;

  Materia({
    required this.name,
    required this.description,
    required this.image,
    required this.image2,
  });
}

class User {
  final String name;
  final String pass;

  User({
    required this.name,
    required this.pass,
  });
}