import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:personal_app/features/password_manager/domain/entities/password_list.dart';
import 'package:personal_app/features/password_manager/domain/repositories/password_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_app/features/password_manager/domain/usecases/get_password_list.dart';

@GenerateMocks([PasswordListRepository])
import 'get_password_list_test.mocks.dart';

void main(){
  MockPasswordListRepository mockPasswordListRepository = MockPasswordListRepository();
  GetPasswordList usecase = GetPasswordList(mockPasswordListRepository);

  setUp((){
    mockPasswordListRepository = MockPasswordListRepository();
    usecase = GetPasswordList(mockPasswordListRepository);
  });

  final passwordList = PasswordList(passwords: []);
  
  test(
    'should get password list from the repository',
    () async{
      when(mockPasswordListRepository.getPasswordList())
          .thenAnswer((_) async => Right(passwordList));

      final result = await usecase.execute();

      expect(result, Right(passwordList));
      verify(mockPasswordListRepository.getPasswordList());
      verifyNoMoreInteractions(mockPasswordListRepository);
    }
  );
}