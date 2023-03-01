import 'package:breaking_bad/data/models/model.dart';
import 'package:dartz/dartz.dart';

import '../web_services/network/failure.dart';

abstract class Repository {
  Future<Either<Failure, Character>> getCharacter();
}
