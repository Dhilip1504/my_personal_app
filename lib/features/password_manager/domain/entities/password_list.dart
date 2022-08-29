import 'package:equatable/equatable.dart';

class PasswordList extends Equatable{
  final List<dynamic> passwords;

  const PasswordList({required this.passwords});

  @override
  List<Object?> get props => [passwords];

}