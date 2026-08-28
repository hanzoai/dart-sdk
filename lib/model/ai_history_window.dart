//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiHistoryWindow {
  /// Returns a new [AiHistoryWindow] instance.
  AiHistoryWindow({
    this.days,
    this.since,
    this.until,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? days;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? since;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? until;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiHistoryWindow &&
    other.days == days &&
    other.since == since &&
    other.until == until;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days == null ? 0 : days!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (until == null ? 0 : until!.hashCode);

  @override
  String toString() => 'AiHistoryWindow[days=$days, since=$since, until=$until]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.days != null) {
      json[r'days'] = this.days;
    } else {
      json[r'days'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since;
    } else {
      json[r'since'] = null;
    }
    if (this.until != null) {
      json[r'until'] = this.until;
    } else {
      json[r'until'] = null;
    }
    return json;
  }

  /// Returns a new [AiHistoryWindow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiHistoryWindow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiHistoryWindow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiHistoryWindow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiHistoryWindow(
        days: mapValueOfType<int>(json, r'days'),
        since: mapValueOfType<String>(json, r'since'),
        until: mapValueOfType<String>(json, r'until'),
      );
    }
    return null;
  }

  static List<AiHistoryWindow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiHistoryWindow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiHistoryWindow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiHistoryWindow> mapFromJson(dynamic json) {
    final map = <String, AiHistoryWindow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiHistoryWindow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiHistoryWindow-objects as value to a dart map
  static Map<String, List<AiHistoryWindow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiHistoryWindow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiHistoryWindow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

