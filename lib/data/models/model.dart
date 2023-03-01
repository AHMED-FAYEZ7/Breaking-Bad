// class Info {
//   int count;
//   int pages;
//   String next;
//   String prev;
//
//   Info(this.count, this.pages, this.next, this.prev);
// }
//
// class Base {
//   Info info;
//
//   Base(this.info);
// }

//////////////////////////////////////////////////////////
class Origin {
  String name;
  String url;

  Origin(this.name, this.url);
}

class Location {
  String name;
  String url;

  Location(this.name, this.url);
}

class Result {
  String id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  Origin? origin;
  Location? location;
  String image;
  List<String> episode;
  String url;
  String created;

  Result(
      this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created);
}

class Character {
  List<Result>? results;

  Character(this.results);
}

///////////////////////////////////////////////////////////////////////////
