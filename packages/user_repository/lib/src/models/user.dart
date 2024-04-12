import 'package:equatable/equatable.dart';
import 'package:user_repository/src/enitities/enitities.dart';

class MyUser extends Equatable {
  final String userId;
  final String name;
  final String email;

  const MyUser({
    required this.userId,
    required this.name,
    required this.email,
  });

  static const empty = MyUser(
    userId: '',
    name: '',
    email: '',
  );

  MyUser copyWith({
    String? userId,
    String? name,
    String? email,
  }) {
    return MyUser(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  MyUserEnitity toEnitity() {
    return MyUserEnitity(
      userId: userId,
      name: name,
      email: email,
    );
  }

  static MyUser fromEnitity(MyUserEnitity enitity) {
    return MyUser(
      userId: enitity.userId,
      name: enitity.name,
      email: enitity.email,
    );
  }

  @override
  List<Object?> get props => [userId, name, email];
}
