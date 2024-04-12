import 'package:equatable/equatable.dart';

class MyUserEnitity extends Equatable {
  final String userId;
  final String name;
  final String email;

  const MyUserEnitity({
    required this.userId,
    required this.name,
    required this.email,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
    };
  }

  static MyUserEnitity fromDocument(Map<String, dynamic> doc) {
    return MyUserEnitity(
      userId: doc['userId'],
      name: doc['name'],
      email: doc['email'],
    );
  }

  @override
  List<Object?> get props => [userId, name, email];
}
