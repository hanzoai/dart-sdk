//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeclaredResp {
  /// Returns a new [DeclaredResp] instance.
  DeclaredResp({
    this.apps = const [],
    this.cdUnavailable,
    this.org,
  });
  List<Declared> apps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Unreadable? cdUnavailable;

  /// Org is the directory read — the caller's own, or another when a SuperAdmin asked to act as it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeclaredResp &&
    _deepEquality.equals(other.apps, apps) &&
    other.cdUnavailable == cdUnavailable &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apps.hashCode) +
    (cdUnavailable == null ? 0 : cdUnavailable!.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'DeclaredResp[apps=$apps, cdUnavailable=$cdUnavailable, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apps'] = this.apps;
    if (this.cdUnavailable != null) {
      json[r'cdUnavailable'] = this.cdUnavailable;
    } else {
      json[r'cdUnavailable'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [DeclaredResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeclaredResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeclaredResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeclaredResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeclaredResp(
        apps: Declared.listFromJson(json[r'apps']),
        cdUnavailable: Unreadable.fromJson(json[r'cdUnavailable']),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<DeclaredResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeclaredResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeclaredResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeclaredResp> mapFromJson(dynamic json) {
    final map = <String, DeclaredResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeclaredResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeclaredResp-objects as value to a dart map
  static Map<String, List<DeclaredResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeclaredResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeclaredResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

