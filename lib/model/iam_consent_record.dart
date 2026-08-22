//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamConsentRecord {
  /// Returns a new [IamConsentRecord] instance.
  IamConsentRecord({
    this.application,
    this.grantedScopes = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? application;

  List<String> grantedScopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamConsentRecord &&
    other.application == application &&
    _deepEquality.equals(other.grantedScopes, grantedScopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (application == null ? 0 : application!.hashCode) +
    (grantedScopes.hashCode);

  @override
  String toString() => 'IamConsentRecord[application=$application, grantedScopes=$grantedScopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
      json[r'grantedScopes'] = this.grantedScopes;
    return json;
  }

  /// Returns a new [IamConsentRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamConsentRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamConsentRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamConsentRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamConsentRecord(
        application: mapValueOfType<String>(json, r'application'),
        grantedScopes: json[r'grantedScopes'] is Iterable
            ? (json[r'grantedScopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IamConsentRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamConsentRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamConsentRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamConsentRecord> mapFromJson(dynamic json) {
    final map = <String, IamConsentRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamConsentRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamConsentRecord-objects as value to a dart map
  static Map<String, List<IamConsentRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamConsentRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamConsentRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

