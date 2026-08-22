//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDisposeIn {
  /// Returns a new [RiskDisposeIn] instance.
  RiskDisposeIn({
    this.before,
  });
  /// Before disposes of assertions WRITTEN before this instant, RFC 3339. It is measured against the server clock at the write and not against the event or observation times, both of which the asserting caller supplies — a tenant that could back-date could delete a compliance record on demand.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? before;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDisposeIn &&
    other.before == before;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (before == null ? 0 : before!.hashCode);

  @override
  String toString() => 'RiskDisposeIn[before=$before]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.before != null) {
      json[r'before'] = this.before;
    } else {
      json[r'before'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDisposeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDisposeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDisposeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDisposeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDisposeIn(
        before: mapValueOfType<String>(json, r'before'),
      );
    }
    return null;
  }

  static List<RiskDisposeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDisposeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDisposeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDisposeIn> mapFromJson(dynamic json) {
    final map = <String, RiskDisposeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDisposeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDisposeIn-objects as value to a dart map
  static Map<String, List<RiskDisposeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDisposeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDisposeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

