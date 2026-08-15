//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminMe {
  /// Returns a new [AdminMe] instance.
  AdminMe({
    this.displayName,
    this.email,
    this.isSuperAdmin,
    this.isWhiteLabel,
    this.name,
    this.owner,
    this.scopeOrgs = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSuperAdmin;

  /// IsWhiteLabel marks the admitted NON-super tier: an admin of an enabled white-label tenant org. Mutually exclusive with IsSuperAdmin (the gate lets exactly one tier through). The operator SPA reads it to render the SUBTREE cockpit — the fleet god-view nav (finance/revenue/metrics/o11y/providers) is hidden — while a super sees the whole fleet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isWhiteLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// ScopeOrgs is the caller's visible tenant window: empty for a SuperAdmin (means ALL orgs), or the WL tenant's own subtree (today the singleton {org}). The SPA threads it through the faceting/drill-down layer so a WL tenant can never widen a filter past their subtree.
  List<String> scopeOrgs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminMe &&
    other.displayName == displayName &&
    other.email == email &&
    other.isSuperAdmin == isSuperAdmin &&
    other.isWhiteLabel == isWhiteLabel &&
    other.name == name &&
    other.owner == owner &&
    _deepEquality.equals(other.scopeOrgs, scopeOrgs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displayName == null ? 0 : displayName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (isSuperAdmin == null ? 0 : isSuperAdmin!.hashCode) +
    (isWhiteLabel == null ? 0 : isWhiteLabel!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (scopeOrgs.hashCode);

  @override
  String toString() => 'AdminMe[displayName=$displayName, email=$email, isSuperAdmin=$isSuperAdmin, isWhiteLabel=$isWhiteLabel, name=$name, owner=$owner, scopeOrgs=$scopeOrgs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.isSuperAdmin != null) {
      json[r'isSuperAdmin'] = this.isSuperAdmin;
    } else {
      json[r'isSuperAdmin'] = null;
    }
    if (this.isWhiteLabel != null) {
      json[r'isWhiteLabel'] = this.isWhiteLabel;
    } else {
      json[r'isWhiteLabel'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
      json[r'scopeOrgs'] = this.scopeOrgs;
    return json;
  }

  /// Returns a new [AdminMe] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminMe? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminMe[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminMe[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminMe(
        displayName: mapValueOfType<String>(json, r'displayName'),
        email: mapValueOfType<String>(json, r'email'),
        isSuperAdmin: mapValueOfType<bool>(json, r'isSuperAdmin'),
        isWhiteLabel: mapValueOfType<bool>(json, r'isWhiteLabel'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        scopeOrgs: json[r'scopeOrgs'] is Iterable
            ? (json[r'scopeOrgs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AdminMe> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminMe>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminMe.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminMe> mapFromJson(dynamic json) {
    final map = <String, AdminMe>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminMe.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminMe-objects as value to a dart map
  static Map<String, List<AdminMe>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminMe>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminMe.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

