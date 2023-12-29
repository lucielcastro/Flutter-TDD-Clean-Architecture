import 'package:architeture/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<Output, Input >{
  //abstração usecase

//método retorna um left, falha e um rich, sucesso
  Future<Either<Failure, Output>> call(Input params);

}

class NoParams extends Equatable{
  @override
 
  List<Object?> get props => [];
  
}
//usecase.update -> classe e método
//com call só chama usecase()