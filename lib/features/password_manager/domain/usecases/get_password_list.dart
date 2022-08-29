import 'package:dartz/dartz.dart';
import 'package:personal_app/core/error/failures.dart';
import 'package:personal_app/features/password_manager/domain/entities/password_list.dart';
import 'package:personal_app/features/password_manager/domain/repositories/password_list_repository.dart';

class GetPasswordList {
  final PasswordListRepository repository;

  GetPasswordList(this.repository);

  Future<Either<Failure, PasswordList>> execute() async {
    return await repository.getPasswordList();
  }
}