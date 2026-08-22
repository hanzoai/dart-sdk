//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexHealth {
  /// Returns a new [IndexHealth] instance.
  IndexHealth({
    this.status,
  });
  /// Status is `available` when the store is readable and `unavailable` when it is not — the second answer rides a 503, so a pod with a broken volume is taken out of rotation rather than serving empty searches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexHealth &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'IndexHealth[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [IndexHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexHealth(
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<IndexHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexHealth> mapFromJson(dynamic json) {
    final map = <String, IndexHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexHealth-objects as value to a dart map
  static Map<String, List<IndexHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

