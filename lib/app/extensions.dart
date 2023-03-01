const String EMPTY = "";
int ZERO = 0;

// extension on string
extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return EMPTY;
    } else {
      return this!;
    }
  }
}

// extension on int
extension NonNullInt on int? {
  int orZero() {
    if (this == null) {
      return ZERO;
    } else {
      return this!;
    }
  }
}

// extension on double
double doubleZERO = 0;

extension NonNullDouble on double? {
  double orDoubleZero() {
    if (this == null) {
      return doubleZERO;
    } else {
      return this!;
    }
  }
}

// extension on bool
bool FALSE = false;

extension NonNullBool on bool? {
  bool orFALSE() {
    if (this == null) {
      return FALSE;
    } else {
      return this!;
    }
  }
}

// extension on STRING list
List<String> EMPTY_LIST = [];

extension NonNullList on List<String>? {
  List<String> orEmptyList() {
    if (this == null) {
      return EMPTY_LIST;
    } else {
      return this!;
    }
  }
}

// extension on DYNAMIC
extension NonNullDynamic on dynamic {
  dynamic orEmptyDynamic() {
    if (this == null) {
      return EMPTY;
    } else {
      return this!;
    }
  }
}
