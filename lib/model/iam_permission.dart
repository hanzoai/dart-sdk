//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamPermission {
  /// Returns a new [IamPermission] instance.
  IamPermission({
    this.actions = const [],
    this.adapter,
    this.approveTime,
    this.approver,
    this.createdAt,
    this.createdTime,
    this.deleted,
    this.description,
    this.displayName,
    this.domains = const [],
    this.effect,
    this.id,
    this.isEnabled,
    this.model,
    this.name,
    this.owner,
    this.resourceType,
    this.resources = const [],
    this.roles = const [],
    this.state,
    this.submitter,
    this.teams = const [],
    this.updatedAt,
    this.users = const [],
  });
  List<String> actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? adapter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? approveTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? approver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Descriptive metadata.
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
  bool? deleted;

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
  String? effect;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnabled;

  /// Authorization model, targets, and decision. AuthzModel carries the v1 `model` column (the named authz model); it is not the Go identifier `Model` because that name is taken by the embedded orm.Model[Permission] mixin. The HTTP contract is unchanged — json:\"model\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Identity — the (owner, name) natural key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceType;

  List<String> resources;

  List<String> roles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Submission / approval workflow.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitter;

  List<String> teams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Subjects the grant is evaluated for.
  List<String> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamPermission &&
    _deepEquality.equals(other.actions, actions) &&
    other.adapter == adapter &&
    other.approveTime == approveTime &&
    other.approver == approver &&
    other.createdAt == createdAt &&
    other.createdTime == createdTime &&
    other.deleted == deleted &&
    other.description == description &&
    other.displayName == displayName &&
    _deepEquality.equals(other.domains, domains) &&
    other.effect == effect &&
    other.id == id &&
    other.isEnabled == isEnabled &&
    other.model == model &&
    other.name == name &&
    other.owner == owner &&
    other.resourceType == resourceType &&
    _deepEquality.equals(other.resources, resources) &&
    _deepEquality.equals(other.roles, roles) &&
    other.state == state &&
    other.submitter == submitter &&
    _deepEquality.equals(other.teams, teams) &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.users, users);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actions.hashCode) +
    (adapter == null ? 0 : adapter!.hashCode) +
    (approveTime == null ? 0 : approveTime!.hashCode) +
    (approver == null ? 0 : approver!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (domains.hashCode) +
    (effect == null ? 0 : effect!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isEnabled == null ? 0 : isEnabled!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (resources.hashCode) +
    (roles.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (submitter == null ? 0 : submitter!.hashCode) +
    (teams.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (users.hashCode);

  @override
  String toString() => 'IamPermission[actions=$actions, adapter=$adapter, approveTime=$approveTime, approver=$approver, createdAt=$createdAt, createdTime=$createdTime, deleted=$deleted, description=$description, displayName=$displayName, domains=$domains, effect=$effect, id=$id, isEnabled=$isEnabled, model=$model, name=$name, owner=$owner, resourceType=$resourceType, resources=$resources, roles=$roles, state=$state, submitter=$submitter, teams=$teams, updatedAt=$updatedAt, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actions'] = this.actions;
    if (this.adapter != null) {
      json[r'adapter'] = this.adapter;
    } else {
      json[r'adapter'] = null;
    }
    if (this.approveTime != null) {
      json[r'approveTime'] = this.approveTime;
    } else {
      json[r'approveTime'] = null;
    }
    if (this.approver != null) {
      json[r'approver'] = this.approver;
    } else {
      json[r'approver'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
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
    if (this.effect != null) {
      json[r'effect'] = this.effect;
    } else {
      json[r'effect'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isEnabled != null) {
      json[r'isEnabled'] = this.isEnabled;
    } else {
      json[r'isEnabled'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
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
    if (this.resourceType != null) {
      json[r'resourceType'] = this.resourceType;
    } else {
      json[r'resourceType'] = null;
    }
      json[r'resources'] = this.resources;
      json[r'roles'] = this.roles;
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.submitter != null) {
      json[r'submitter'] = this.submitter;
    } else {
      json[r'submitter'] = null;
    }
      json[r'teams'] = this.teams;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
      json[r'users'] = this.users;
    return json;
  }

  /// Returns a new [IamPermission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamPermission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamPermission[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamPermission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamPermission(
        actions: json[r'actions'] is Iterable
            ? (json[r'actions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        adapter: mapValueOfType<String>(json, r'adapter'),
        approveTime: mapValueOfType<String>(json, r'approveTime'),
        approver: mapValueOfType<String>(json, r'approver'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        effect: mapValueOfType<String>(json, r'effect'),
        id: mapValueOfType<String>(json, r'id'),
        isEnabled: mapValueOfType<bool>(json, r'isEnabled'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        resourceType: mapValueOfType<String>(json, r'resourceType'),
        resources: json[r'resources'] is Iterable
            ? (json[r'resources'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        roles: json[r'roles'] is Iterable
            ? (json[r'roles'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        state: mapValueOfType<String>(json, r'state'),
        submitter: mapValueOfType<String>(json, r'submitter'),
        teams: json[r'teams'] is Iterable
            ? (json[r'teams'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        users: json[r'users'] is Iterable
            ? (json[r'users'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IamPermission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamPermission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamPermission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamPermission> mapFromJson(dynamic json) {
    final map = <String, IamPermission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamPermission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamPermission-objects as value to a dart map
  static Map<String, List<IamPermission>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamPermission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamPermission.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

