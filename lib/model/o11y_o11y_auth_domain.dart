//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAuthDomain {
  /// Returns a new [O11yO11yAuthDomain] instance.
  O11yO11yAuthDomain({
    this.authNProviderInfo,
    this.config,
    this.createdAt,
    this.id,
    this.name,
    this.orgId,
    this.updatedAt,
  });
  /// AuthNProviderInfo is provider detail the console needs to finish setup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAuthNProviderInfo? authNProviderInfo;

  /// Config is the domain's SSO configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAuthDomainConfig? config;

  /// CreatedAt is when it was claimed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// ID is the auth domain id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the email domain, e.g. example.com.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OrgID is the org that claimed it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// UpdatedAt is when its configuration last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAuthDomain &&
    other.authNProviderInfo == authNProviderInfo &&
    other.config == config &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.name == name &&
    other.orgId == orgId &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authNProviderInfo == null ? 0 : authNProviderInfo!.hashCode) +
    (config == null ? 0 : config!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yO11yAuthDomain[authNProviderInfo=$authNProviderInfo, config=$config, createdAt=$createdAt, id=$id, name=$name, orgId=$orgId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authNProviderInfo != null) {
      json[r'authNProviderInfo'] = this.authNProviderInfo;
    } else {
      json[r'authNProviderInfo'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yAuthDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAuthDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAuthDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAuthDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAuthDomain(
        authNProviderInfo: O11yO11yAuthNProviderInfo.fromJson(json[r'authNProviderInfo']),
        config: O11yO11yAuthDomainConfig.fromJson(json[r'config']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yO11yAuthDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAuthDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAuthDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAuthDomain> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAuthDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAuthDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAuthDomain-objects as value to a dart map
  static Map<String, List<O11yO11yAuthDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAuthDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAuthDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

