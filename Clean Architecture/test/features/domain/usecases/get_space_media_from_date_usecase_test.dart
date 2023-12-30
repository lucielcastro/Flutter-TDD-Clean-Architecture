import 'dart:ffi';

import 'package:architeture/core/errors/failure.dart';
import 'package:architeture/core/usecase/usecase.dart';
import 'package:architeture/features/domain/entities/space_media_entity.dart';
import 'package:architeture/features/domain/repositories/space_media_repository.dart';
import 'package:architeture/features/domain/usecases/get_space_media_from_date_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSpaceMediaRepository extends Mock implements ISpaceMediaRepository {}

void main() {
  late GetSpaceMediaFromDateUsecase usecase;
  late ISpaceMediaRepository repository;

  setUp(() {
    repository = MockSpaceMediaRepository();
    //inicialização geral de tudo
    usecase = GetSpaceMediaFromDateUsecase(repository);
  });

  final tSpaceMedia = SpaceMediaEntity(
      description: '', mediaType: 'image', title: '', mediaUrl: '');

  final tDate = DateTime(2021, 02, 02);
  test(
    'should get space media entity from a given date from the repository',
    () async {
      when(() => repository.getSpaceMediaFromDate(tDate)).thenAnswer(
          (_) async => Right<Failure, SpaceMediaEntity>(tSpaceMedia));

      final result = await usecase(tDate);
      expect(
        result,
        Right(tSpaceMedia),
      );
      verify(
        () => repository.getSpaceMediaFromDate(tDate),
      );
    },
  );
}
//criar void main para rodar todos os testes
//repository.getSpaceMediaFromDate

// // Simule o comportamento do método do repositório quando chamado pelo caso de uso
    // when(() => repository.getSpaceMediaFromDate(any()))
    //     .thenAnswer((_) async => Right(tSpaceMedia));

    // // Defina a data de teste para a qual você espera recuperar a mídia espacial
    // //final dataDeTeste = DateTime.now();

    // // Chame o método execute do caso de uso com a data de teste
    // final result = await usecase.call(tNoParams);

    // // Verifique se o método do repositório foi chamado com o argumento correto
    

    // // Verifique se o resultado retornado pelo caso de uso corresponde aos dados esperados
    // expect(result, Right(tSpaceMedia));
    // //777verify(() => repository.getSpaceMediaFromDate(dataDeTeste)); 