//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingRevokeRequest {
  /// Returns a new [LicensingRevokeRequest] instance.
  LicensingRevokeRequest({
    this.reason,
    required this.scope,
    required this.value,
  });

  /// Reason is the operator's note, echoed back by verify so a support agent can explain the refusal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Scope is what the revocation matches on: \"nonce\" kills one token, \"holder\" every token issued to one bearer, \"fingerprint\" every token bound to one device, and \"release\" every token scoped to one binary release.
  String scope;

  /// Value is the concrete nonce, holder, fingerprint or release id to revoke.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingRevokeRequest &&
    other.reason == reason &&
    other.scope == scope &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reason == null ? 0 : reason!.hashCode) +
    (scope.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'LicensingRevokeRequest[reason=$reason, scope=$scope, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
      json[r'scope'] = this.scope;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [LicensingRevokeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingRevokeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingRevokeRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingRevokeRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingRevokeRequest(
        reason: mapValueOfType<String>(json, r'reason'),
        scope: mapValueOfType<String>(json, r'scope')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<LicensingRevokeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingRevokeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingRevokeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingRevokeRequest> mapFromJson(dynamic json) {
    final map = <String, LicensingRevokeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingRevokeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingRevokeRequest-objects as value to a dart map
  static Map<String, List<LicensingRevokeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingRevokeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingRevokeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scope',
    'value',
  };
}

