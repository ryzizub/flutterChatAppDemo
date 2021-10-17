class User {
  final int id;
  final String name;
  final String imageURL;

  User({
    required this.id,
    required this.name,
    required this.imageURL,
  });
}

final User currentUser =
    User(id: 1, imageURL: 'assets/images/fred.jpg', name: 'Current User');

final User bob = User(id: 2, imageURL: 'assets/images/bob.jpg', name: 'Bob');
