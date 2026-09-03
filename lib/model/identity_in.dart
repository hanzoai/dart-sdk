//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IdentityIn {
  /// Returns a new [IdentityIn] instance.
  IdentityIn({
    this.name,
    this.roles = const [],
  });
  /// Name is the device's name within the org — a DNS label. The fabric knows the identity as \"<name>.<org>\"; every answer here uses the caller's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Roles are extra role attributes for the identity, each scoped to the caller's org on the way in (\"k3s-host\" is written as \"k3s-host.<org>\") so no caller can claim an attribute another tenant's policy selects. A role of the form \"<service>-host\" makes this identity a HOST of that published service — the bind policy from POST /v1/network/services selects exactly that attribute — and is refused when the org has no such service.
  List<String> roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityIn &&
    other.name == name &&
    _deepEquality.equals(other.roles, roles);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (roles.hashCode);

  @override
  String toString() => 'IdentityIn[name=$name, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'roles'] = this.roles;
    return json;
  }

  /// Returns a new [IdentityIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityIn(
        name: mapValueOfType<String>(json, r'name'),
        roles: json[r'roles'] is Iterable
            ? (json[r'roles'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IdentityIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityIn> mapFromJson(dynamic json) {
    final map = <String, IdentityIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityIn-objects as value to a dart map
  static Map<String, List<IdentityIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdentityIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

