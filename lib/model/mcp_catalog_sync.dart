//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class McpCatalogSync {
  /// Returns a new [McpCatalogSync] instance.
  McpCatalogSync({
    this.added,
    this.registry,
    this.total,
    this.updated,
  });

  /// Added is how many listings the catalog did not have before.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? added;

  /// Registry is the upstream this pass read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registry;

  /// Total is how many listings the catalog holds now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Updated is how many the publisher has changed since we last looked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is McpCatalogSync &&
    other.added == added &&
    other.registry == registry &&
    other.total == total &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (added == null ? 0 : added!.hashCode) +
    (registry == null ? 0 : registry!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'McpCatalogSync[added=$added, registry=$registry, total=$total, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.added != null) {
      json[r'added'] = this.added;
    } else {
      json[r'added'] = null;
    }
    if (this.registry != null) {
      json[r'registry'] = this.registry;
    } else {
      json[r'registry'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [McpCatalogSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static McpCatalogSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "McpCatalogSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "McpCatalogSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return McpCatalogSync(
        added: mapValueOfType<int>(json, r'added'),
        registry: mapValueOfType<String>(json, r'registry'),
        total: mapValueOfType<int>(json, r'total'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<McpCatalogSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <McpCatalogSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = McpCatalogSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, McpCatalogSync> mapFromJson(dynamic json) {
    final map = <String, McpCatalogSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = McpCatalogSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of McpCatalogSync-objects as value to a dart map
  static Map<String, List<McpCatalogSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<McpCatalogSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = McpCatalogSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

