import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetWorkInfoImpl implements NetworkInfo {
  DataConnectionChecker _dataConnectionChecker;
  NetWorkInfoImpl(this._dataConnectionChecker);
  @override
  Future<bool> get isConnected => _dataConnectionChecker.hasConnection;
}
