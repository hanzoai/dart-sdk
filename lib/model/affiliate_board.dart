//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AffiliateBoard {
  /// Returns a new [AffiliateBoard] instance.
  AffiliateBoard({
    this.leaders = const [],
    this.total,
    this.you,
  });
  /// Leaders are the top opt-in affiliates, by handle and aggregate figures only.
  List<LeaderboardRow> leaders;

  /// Total is the approved population where it is known; omitted where the top page truncated and the caller has no rank to derive it from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// You is the caller's own row with its exact global rank; only an approved affiliate has one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LeaderboardRow? you;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateBoard &&
    _deepEquality.equals(other.leaders, leaders) &&
    other.total == total &&
    other.you == you;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leaders.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (you == null ? 0 : you!.hashCode);

  @override
  String toString() => 'AffiliateBoard[leaders=$leaders, total=$total, you=$you]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'leaders'] = this.leaders;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.you != null) {
      json[r'you'] = this.you;
    } else {
      json[r'you'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliateBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AffiliateBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AffiliateBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AffiliateBoard(
        leaders: LeaderboardRow.listFromJson(json[r'leaders']),
        total: mapValueOfType<int>(json, r'total'),
        you: LeaderboardRow.fromJson(json[r'you']),
      );
    }
    return null;
  }

  static List<AffiliateBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateBoard> mapFromJson(dynamic json) {
    final map = <String, AffiliateBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateBoard-objects as value to a dart map
  static Map<String, List<AffiliateBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

