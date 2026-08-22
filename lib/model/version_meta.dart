//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VersionMeta {
  /// Returns a new [VersionMeta] instance.
  VersionMeta({
    this.brand,
    this.updatedAt,
    this.version,
  });
  /// Brand is the white-label key this revision was authored under; empty is the shared base playbook. Revisions of two brands never share a number line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  /// UpdatedAt is when this revision was written, as Unix seconds — the \"who changed the playbook, and when\" half of the audit trail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// Version is the store's own revision counter for that brand, starting at 1 for the seeded playbook and incrementing on every edit. Nothing is overwritten, so the highest number is the live one and every lower number is still readable. It is not the playbook's authored `version` string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionMeta &&
    other.brand == brand &&
    other.updatedAt == updatedAt &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand == null ? 0 : brand!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'VersionMeta[brand=$brand, updatedAt=$updatedAt, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [VersionMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VersionMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VersionMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VersionMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VersionMeta(
        brand: mapValueOfType<String>(json, r'brand'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<VersionMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VersionMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VersionMeta> mapFromJson(dynamic json) {
    final map = <String, VersionMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VersionMeta-objects as value to a dart map
  static Map<String, List<VersionMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VersionMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VersionMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

