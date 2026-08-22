//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class VerifyOut {
  /// Returns a new [VerifyOut] instance.
  VerifyOut({
    this.account,
    this.active,
    this.externalId,
    this.provider,
    this.reason,
    this.scopes = const [],
  });
  /// Account is the account label the provider reported. Present only when active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Active is whether the stored credential verified live against the provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// ExternalID is the provider's account id. Present only when active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Provider is the connector's registry id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Reason is why the check failed. Present only when active is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Scopes are the permissions the credential carries. Present only when active.
  List<String> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyOut &&
    other.account == account &&
    other.active == active &&
    other.externalId == externalId &&
    other.provider == provider &&
    other.reason == reason &&
    _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (scopes.hashCode);

  @override
  String toString() => 'VerifyOut[account=$account, active=$active, externalId=$externalId, provider=$provider, reason=$reason, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [VerifyOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyOut(
        account: mapValueOfType<String>(json, r'account'),
        active: mapValueOfType<bool>(json, r'active'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        provider: mapValueOfType<String>(json, r'provider'),
        reason: mapValueOfType<String>(json, r'reason'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<VerifyOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyOut> mapFromJson(dynamic json) {
    final map = <String, VerifyOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyOut-objects as value to a dart map
  static Map<String, List<VerifyOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

