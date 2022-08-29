import 'package:dartz/dartz.dart';
import 'package:personal_app/core/error/failures.dart';
import 'package:personal_app/features/password_manager/domain/entities/password_list.dart';

abstract class PasswordListRepository {
  Future<Either<Failure, PasswordList>> getPasswordList();
}