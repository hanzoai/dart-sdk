//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScaleIn {
  /// Returns a new [ScaleIn] instance.
  ScaleIn({
    this.count,
    this.id,
    this.pool,
  });

  /// Count is the node count to set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// ID is the DOKS cluster id, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Pool is the node pool, from the path. Its DO id or its name — both are unique within a cluster, and an operator reads the name off the board.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScaleIn &&
    other.count == count &&
    other.id == id &&
    other.pool == pool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (pool == null ? 0 : pool!.hashCode);

  @override
  String toString() => 'ScaleIn[count=$count, id=$id, pool=$pool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.pool != null) {
      json[r'pool'] = this.pool;
    } else {
      json[r'pool'] = null;
    }
    return json;
  }

  /// Returns a new [ScaleIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScaleIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScaleIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScaleIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScaleIn(
        count: mapValueOfType<int>(json, r'count'),
        id: mapValueOfType<String>(json, r'id'),
        pool: mapValueOfType<String>(json, r'pool'),
      );
    }
    return null;
  }

  static List<ScaleIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScaleIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScaleIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScaleIn> mapFromJson(dynamic json) {
    final map = <String, ScaleIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScaleIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScaleIn-objects as value to a dart map
  static Map<String, List<ScaleIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScaleIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScaleIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

