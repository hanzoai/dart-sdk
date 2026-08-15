//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StorageAlert {
  /// Returns a new [StorageAlert] instance.
  StorageAlert({
    this.level,
    this.pct,
    this.volume,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageAlert &&
    other.level == level &&
    other.pct == pct &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (level == null ? 0 : level!.hashCode) +
    (pct == null ? 0 : pct!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'StorageAlert[level=$level, pct=$pct, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.pct != null) {
      json[r'pct'] = this.pct;
    } else {
      json[r'pct'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [StorageAlert] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageAlert? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageAlert[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageAlert[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageAlert(
        level: mapValueOfType<String>(json, r'level'),
        pct: num.parse('${json[r'pct']}'),
        volume: mapValueOfType<String>(json, r'volume'),
      );
    }
    return null;
  }

  static List<StorageAlert> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageAlert>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageAlert.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageAlert> mapFromJson(dynamic json) {
    final map = <String, StorageAlert>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageAlert.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageAlert-objects as value to a dart map
  static Map<String, List<StorageAlert>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageAlert>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageAlert.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

