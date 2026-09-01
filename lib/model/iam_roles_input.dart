//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamRolesInput {
  /// Returns a new [IamRolesInput] instance.
  IamRolesInput({
    this.createdTime,
    this.description,
    this.displayName,
    this.domains = const [],
    this.isEnabled,
    this.name,
    this.owner,
    this.roles = const [],
    this.teams = const [],
    this.users = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  List<String> domains;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnabled;

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

  List<String> roles;

  List<String> teams;

  List<String> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamRolesInput &&
    other.createdTime == createdTime &&
    other.description == description &&
    other.displayName == displayName &&
    _deepEquality.equals(other.domains, domains) &&
    other.isEnabled == isEnabled &&
    other.name == name &&
    other.owner == owner &&
    _deepEquality.equals(other.roles, roles) &&
    _deepEquality.equals(other.teams, teams) &&
    _deepEquality.equals(other.users, users);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (domains.hashCode) +
    (isEnabled == null ? 0 : isEnabled!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (roles.hashCode) +
    (teams.hashCode) +
    (users.hashCode);

  @override
  String toString() => 'IamRolesInput[createdTime=$createdTime, description=$description, displayName=$displayName, domains=$domains, isEnabled=$isEnabled, name=$name, owner=$owner, roles=$roles, teams=$teams, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
      json[r'domains'] = this.domains;
    if (this.isEnabled != null) {
      json[r'isEnabled'] = this.isEnabled;
    } else {
      json[r'isEnabled'] = null;
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
      json[r'roles'] = this.roles;
      json[r'teams'] = this.teams;
      json[r'users'] = this.users;
    return json;
  }

  /// Returns a new [IamRolesInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamRolesInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamRolesInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamRolesInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamRolesInput(
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        isEnabled: mapValueOfType<bool>(json, r'isEnabled'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        roles: json[r'roles'] is Iterable
            ? (json[r'roles'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        teams: json[r'teams'] is Iterable
            ? (json[r'teams'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        users: json[r'users'] is Iterable
            ? (json[r'users'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IamRolesInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamRolesInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamRolesInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamRolesInput> mapFromJson(dynamic json) {
    final map = <String, IamRolesInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamRolesInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamRolesInput-objects as value to a dart map
  static Map<String, List<IamRolesInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamRolesInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamRolesInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

