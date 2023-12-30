import 'package:architeture/core/errors/failure.dart';
import 'package:architeture/core/usecase/usecase.dart';
import 'package:architeture/features/domain/entities/space_media_entity.dart';
import 'package:architeture/features/domain/repositories/space_media_repository.dart';
import 'package:dartz/dartz.dart';

class GetSpaceMediaFromDateUsecase extends Usecase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaFromDateUsecase(this.repository);
  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime date) async {
    return await repository.getSpaceMediaFromDate(date);
  }
}
