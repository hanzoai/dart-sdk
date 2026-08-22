//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SeoBacklinkIn {
  /// Returns a new [SeoBacklinkIn] instance.
  SeoBacklinkIn({
    this.target,
  });
  /// Target is a domain, a subdomain or a single page URL. A domain summarises the whole site; a URL summarises that page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SeoBacklinkIn &&
    other.target == target;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (target == null ? 0 : target!.hashCode);

  @override
  String toString() => 'SeoBacklinkIn[target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    return json;
  }

  /// Returns a new [SeoBacklinkIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SeoBacklinkIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SeoBacklinkIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SeoBacklinkIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SeoBacklinkIn(
        target: mapValueOfType<String>(json, r'target'),
      );
    }
    return null;
  }

  static List<SeoBacklinkIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SeoBacklinkIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SeoBacklinkIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SeoBacklinkIn> mapFromJson(dynamic json) {
    final map = <String, SeoBacklinkIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SeoBacklinkIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SeoBacklinkIn-objects as value to a dart map
  static Map<String, List<SeoBacklinkIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SeoBacklinkIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SeoBacklinkIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

