//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAccount {
  /// Returns a new [O11yAccount] instance.
  O11yAccount({
    this.agentReport,
    this.config,
    this.createdAt,
    this.id,
    this.orgId,
    this.provider,
    this.providerAccountId,
    this.removedAt,
    this.updatedAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAgentReport? agentReport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAccountConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  Object? id;

  Object? orgId;

  Object? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? removedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAccount &&
    other.agentReport == agentReport &&
    other.config == config &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.orgId == orgId &&
    other.provider == provider &&
    other.providerAccountId == providerAccountId &&
    other.removedAt == removedAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agentReport == null ? 0 : agentReport!.hashCode) +
    (config == null ? 0 : config!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (providerAccountId == null ? 0 : providerAccountId!.hashCode) +
    (removedAt == null ? 0 : removedAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yAccount[agentReport=$agentReport, config=$config, createdAt=$createdAt, id=$id, orgId=$orgId, provider=$provider, providerAccountId=$providerAccountId, removedAt=$removedAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agentReport != null) {
      json[r'agentReport'] = this.agentReport;
    } else {
      json[r'agentReport'] = null;
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
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.providerAccountId != null) {
      json[r'providerAccountId'] = this.providerAccountId;
    } else {
      json[r'providerAccountId'] = null;
    }
    if (this.removedAt != null) {
      json[r'removedAt'] = this.removedAt!.toUtc().toIso8601String();
    } else {
      json[r'removedAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAccount(
        agentReport: O11yAgentReport.fromJson(json[r'agentReport']),
        config: O11yAccountConfig.fromJson(json[r'config']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        id: mapValueOfType<Object>(json, r'id'),
        orgId: mapValueOfType<Object>(json, r'orgId'),
        provider: mapValueOfType<Object>(json, r'provider'),
        providerAccountId: mapValueOfType<String>(json, r'providerAccountId'),
        removedAt: mapDateTime(json, r'removedAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAccount> mapFromJson(dynamic json) {
    final map = <String, O11yAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAccount-objects as value to a dart map
  static Map<String, List<O11yAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

