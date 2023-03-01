import 'package:breaking_bad/data/web_services/network/app_api.dart';

import '../responses/responses.dart';

abstract class RemoteDatSource {
  Future<CharacterResponse> getCharacter();
}

class RemoteDatSourceImplementer implements RemoteDatSource {
  AppServiceClint _appServiceClint;
  RemoteDatSourceImplementer(this._appServiceClint);

  @override
  Future<CharacterResponse> getCharacter() async {
    return await _appServiceClint.getCharacter();
  }
}
