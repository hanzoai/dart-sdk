//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogPromotePath {
  /// Returns a new [O11yO11yLogPromotePath] instance.
  O11yO11yLogPromotePath({
    this.indexes = const [],
    this.path,
    this.promote,
  });
  /// Indexes are the indexes to put on the path.
  List<O11yO11yLogPromoteIndex> indexes;

  /// Path is the body path, e.g. body.user.id on the way in; listed without the body. prefix.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Promote lifts the path into its own column when true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? promote;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogPromotePath &&
    _deepEquality.equals(other.indexes, indexes) &&
    other.path == path &&
    other.promote == promote;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indexes.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (promote == null ? 0 : promote!.hashCode);

  @override
  String toString() => 'O11yO11yLogPromotePath[indexes=$indexes, path=$path, promote=$promote]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'indexes'] = this.indexes;
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.promote != null) {
      json[r'promote'] = this.promote;
    } else {
      json[r'promote'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLogPromotePath] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogPromotePath? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogPromotePath[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogPromotePath[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogPromotePath(
        indexes: O11yO11yLogPromoteIndex.listFromJson(json[r'indexes']),
        path: mapValueOfType<String>(json, r'path'),
        promote: mapValueOfType<bool>(json, r'promote'),
      );
    }
    return null;
  }

  static List<O11yO11yLogPromotePath> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogPromotePath>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogPromotePath.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogPromotePath> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogPromotePath>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogPromotePath.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogPromotePath-objects as value to a dart map
  static Map<String, List<O11yO11yLogPromotePath>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogPromotePath>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogPromotePath.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

