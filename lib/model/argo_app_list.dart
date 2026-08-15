//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoAppList {
  /// Returns a new [ArgoAppList] instance.
  ArgoAppList({
    this.apiVersion,
    this.items = const [],
    this.kind,
    this.metadata,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiVersion;

  List<ArgoApp> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoListMeta? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoAppList &&
    other.apiVersion == apiVersion &&
    _deepEquality.equals(other.items, items) &&
    other.kind == kind &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiVersion == null ? 0 : apiVersion!.hashCode) +
    (items.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'ArgoAppList[apiVersion=$apiVersion, items=$items, kind=$kind, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiVersion != null) {
      json[r'apiVersion'] = this.apiVersion;
    } else {
      json[r'apiVersion'] = null;
    }
      json[r'items'] = this.items;
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoAppList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoAppList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoAppList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoAppList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoAppList(
        apiVersion: mapValueOfType<String>(json, r'apiVersion'),
        items: ArgoApp.listFromJson(json[r'items']),
        kind: mapValueOfType<String>(json, r'kind'),
        metadata: ArgoListMeta.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<ArgoAppList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoAppList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoAppList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoAppList> mapFromJson(dynamic json) {
    final map = <String, ArgoAppList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoAppList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoAppList-objects as value to a dart map
  static Map<String, List<ArgoAppList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoAppList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoAppList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

