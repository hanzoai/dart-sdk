//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PagesKVBinding {
  /// Returns a new [PagesKVBinding] instance.
  PagesKVBinding({
    this.namespaceId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespaceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagesKVBinding &&
    other.namespaceId == namespaceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (namespaceId == null ? 0 : namespaceId!.hashCode);

  @override
  String toString() => 'PagesKVBinding[namespaceId=$namespaceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.namespaceId != null) {
      json[r'namespace_id'] = this.namespaceId;
    } else {
      json[r'namespace_id'] = null;
    }
    return json;
  }

  /// Returns a new [PagesKVBinding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagesKVBinding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagesKVBinding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagesKVBinding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagesKVBinding(
        namespaceId: mapValueOfType<String>(json, r'namespace_id'),
      );
    }
    return null;
  }

  static List<PagesKVBinding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagesKVBinding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagesKVBinding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagesKVBinding> mapFromJson(dynamic json) {
    final map = <String, PagesKVBinding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagesKVBinding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagesKVBinding-objects as value to a dart map
  static Map<String, List<PagesKVBinding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagesKVBinding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PagesKVBinding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

