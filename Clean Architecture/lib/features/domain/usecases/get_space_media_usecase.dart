import 'package:architeture/core/errors/failure.dart';
import 'package:architeture/core/usecase/usecase.dart';
import 'package:architeture/features/domain/entities/space_media_entity.dart';
import 'package:architeture/features/domain/repositories/space_media_repository.dart';
import 'package:dartz/dartz.dart';

class GetSpaceMediaUsecase extends Usecase<SpaceMediaEntity, NoParams>{
  
  final ISpaceMediaRepository repository;

  GetSpaceMediaUsecase(this.repository);
  @override
  Future<Either<Failure, SpaceMediaEntity>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}