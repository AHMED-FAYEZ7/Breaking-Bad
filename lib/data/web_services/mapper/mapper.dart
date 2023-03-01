import 'package:breaking_bad/app/extensions.dart';
import 'package:breaking_bad/data/models/model.dart';
import 'package:breaking_bad/data/web_services/responses/responses.dart';

extension OriginResponseMapper on OriginResponse? {
  Origin toDomain() {
    return Origin(
      this?.name?.orEmpty() ?? EMPTY,
      this?.url?.orEmpty() ?? EMPTY,
    );
  }
}

extension LocationResponseMapper on LocationResponse? {
  Location toDomain() {
    return Location(
      this?.name?.orEmpty() ?? EMPTY,
      this?.url?.orEmpty() ?? EMPTY,
    );
  }
}

extension ResultResponseMapper on ResultResponse? {
  Result toDomain() {
    return Result(
      this?.id?.orEmpty() ?? EMPTY,
      this?.name?.orEmpty() ?? EMPTY,
      this?.status?.orEmpty() ?? EMPTY,
      this?.species?.orEmpty() ?? EMPTY,
      this?.type?.orEmpty() ?? EMPTY,
      this?.gender?.orEmpty() ?? EMPTY,
      this?.origin?.toDomain(),
      this?.location?.toDomain(),
      this?.image?.orEmpty() ?? EMPTY,
      this?.episode?.orEmptyList() ?? EMPTY_LIST,
      this?.url?.orEmpty() ?? EMPTY,
      this?.created?.orEmpty() ?? EMPTY,
    );
  }
}

extension CharacterResponseMapper on CharacterResponse? {
  Character toDomain() {
    List<Result> mappedResults =
        (this?.results?.map((results) => results.toDomain()) ??
                const Iterable.empty())
            .cast<Result>()
            .toList();

    return Character(mappedResults);
  }
}
