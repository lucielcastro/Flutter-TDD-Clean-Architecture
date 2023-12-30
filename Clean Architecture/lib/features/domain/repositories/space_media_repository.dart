import 'package:architeture/core/errors/failure.dart';
import 'package:architeture/features/domain/entities/space_media_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ISpaceMediaRepository {
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime date);
}
//I para indicar abstração