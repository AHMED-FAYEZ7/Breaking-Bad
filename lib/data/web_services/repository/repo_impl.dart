import 'package:breaking_bad/data/models/model.dart';
import 'package:breaking_bad/data/repository/repository.dart';
import 'package:breaking_bad/data/web_services/data_source/remote_data_source.dart';
import 'package:breaking_bad/data/web_services/mapper/mapper.dart';
import 'package:breaking_bad/data/web_services/network/failure.dart';
import 'package:breaking_bad/data/web_services/network/network_info.dart';
import 'package:dartz/dartz.dart';

import '../network/error_handeler.dart';

class RepositoryImpl extends Repository {
  final RemoteDatSource _remoteDatSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDatSource, this._networkInfo);
  @override
  Future<Either<Failure, Character>> getCharacter() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDatSource.getCharacter();
        return Right(response.toDomain());
      } catch (error) {
        return (left(ErrorHandler.handle(error).failure));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
