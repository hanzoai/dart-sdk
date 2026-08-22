//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDashboardPatchOp {
  /// Returns a new [O11yO11yDashboardPatchOp] instance.
  O11yO11yDashboardPatchOp({
    this.from,
    this.op,
    this.path,
    this.value,
  });
  /// From is the source JSON Pointer for move and copy; ignored otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Op is the verb: add, remove, replace, move, copy or test.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? op;

  /// Path is a JSON Pointer into the postable dashboard, e.g. /spec/display/name, /spec/panels/<id>, /tags/-.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  Object? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDashboardPatchOp &&
    other.from == from &&
    other.op == op &&
    other.path == path &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from == null ? 0 : from!.hashCode) +
    (op == null ? 0 : op!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yDashboardPatchOp[from=$from, op=$op, path=$path, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.op != null) {
      json[r'op'] = this.op;
    } else {
      json[r'op'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yDashboardPatchOp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDashboardPatchOp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDashboardPatchOp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDashboardPatchOp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDashboardPatchOp(
        from: mapValueOfType<String>(json, r'from'),
        op: mapValueOfType<String>(json, r'op'),
        path: mapValueOfType<String>(json, r'path'),
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yO11yDashboardPatchOp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDashboardPatchOp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDashboardPatchOp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDashboardPatchOp> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDashboardPatchOp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDashboardPatchOp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDashboardPatchOp-objects as value to a dart map
  static Map<String, List<O11yO11yDashboardPatchOp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDashboardPatchOp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDashboardPatchOp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

