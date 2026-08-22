//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PointView {
  /// Returns a new [PointView] instance.
  PointView({
    this.t,
    this.v,
  });
  /// the bucket's start, RFC3339 (UTC)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? t;

  /// how many invocations fell in it — a real count, never interpolated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? v;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PointView &&
    other.t == t &&
    other.v == v;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (t == null ? 0 : t!.hashCode) +
    (v == null ? 0 : v!.hashCode);

  @override
  String toString() => 'PointView[t=$t, v=$v]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.t != null) {
      json[r't'] = this.t;
    } else {
      json[r't'] = null;
    }
    if (this.v != null) {
      json[r'v'] = this.v;
    } else {
      json[r'v'] = null;
    }
    return json;
  }

  /// Returns a new [PointView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PointView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PointView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PointView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PointView(
        t: mapValueOfType<String>(json, r't'),
        v: mapValueOfType<int>(json, r'v'),
      );
    }
    return null;
  }

  static List<PointView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PointView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PointView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PointView> mapFromJson(dynamic json) {
    final map = <String, PointView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PointView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PointView-objects as value to a dart map
  static Map<String, List<PointView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PointView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PointView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

