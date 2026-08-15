//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BackfillQuery {
  /// Returns a new [BackfillQuery] instance.
  BackfillQuery({
    this.before,
    this.force,
  });

  /// Before bounds the seed to ledger rows written before this RFC3339 instant. Defaults to now, and is snapped down to UTC midnight — the rollup's grain, so the seeded days and the guarded days are the same set. Pass the day the incremental view started capturing, so seed and view never share a day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? before;

  /// Force must be exactly \"true\" to seed a rollup that already holds rows. It is spelled as a string, not a flag, because the guard has always compared this value literally — \"1\" and \"yes\" do NOT force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? force;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackfillQuery &&
    other.before == before &&
    other.force == force;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (before == null ? 0 : before!.hashCode) +
    (force == null ? 0 : force!.hashCode);

  @override
  String toString() => 'BackfillQuery[before=$before, force=$force]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.before != null) {
      json[r'before'] = this.before;
    } else {
      json[r'before'] = null;
    }
    if (this.force != null) {
      json[r'force'] = this.force;
    } else {
      json[r'force'] = null;
    }
    return json;
  }

  /// Returns a new [BackfillQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackfillQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BackfillQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BackfillQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BackfillQuery(
        before: mapValueOfType<String>(json, r'before'),
        force: mapValueOfType<String>(json, r'force'),
      );
    }
    return null;
  }

  static List<BackfillQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackfillQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackfillQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackfillQuery> mapFromJson(dynamic json) {
    final map = <String, BackfillQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackfillQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackfillQuery-objects as value to a dart map
  static Map<String, List<BackfillQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackfillQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackfillQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

