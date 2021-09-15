import 'package:equatable/equatable.dart';

class LoggedUser extends Equatable {
  final String email;
  final String? name;
  final String? photoUrl;

  const LoggedUser({
    this.name,
    required this.email,
    this.photoUrl,
  });

  @override
  List<Object> get props => [email];
}