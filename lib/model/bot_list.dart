//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BotList {
  /// Returns a new [BotList] instance.
  BotList({
    this.bots = const [],
  });

  /// Bots is one row per kind=bot machine, each joined with its agent binding when it has one.
  List<BotView> bots;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BotList &&
    _deepEquality.equals(other.bots, bots);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bots.hashCode);

  @override
  String toString() => 'BotList[bots=$bots]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bots'] = this.bots;
    return json;
  }

  /// Returns a new [BotList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BotList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BotList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BotList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BotList(
        bots: BotView.listFromJson(json[r'bots']),
      );
    }
    return null;
  }

  static List<BotList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BotList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BotList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BotList> mapFromJson(dynamic json) {
    final map = <String, BotList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BotList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BotList-objects as value to a dart map
  static Map<String, List<BotList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BotList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BotList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

