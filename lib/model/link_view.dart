//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LinkView {
  /// Returns a new [LinkView] instance.
  LinkView({
    this.account,
    this.billing,
    this.createdAt,
    this.host,
    this.id,
    this.kind,
    this.lastSeen,
    this.machine,
    this.os,
    this.plan,
    this.provider,
    this.status,
    this.updatedAt,
    this.usage,
    this.user,
  });

  /// Account is the provider-side account identifier, when the collector knows it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Billing is how this account's inference bills — plan (the user's own subscription, metered here for visibility only) or commerce (the gateway path). Derived from Kind, never stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? billing;

  /// CreatedAt is when the link was first registered, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Host is the machine's human hostname label, from its most recent report.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// ID is the link's opaque handle (\"link_\" + 32 hex chars).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is how the account authenticates: subscription or apikey.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// LastSeen is when the account last reported, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSeen;

  /// Machine is the stable machine identifier the collector reports.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machine;

  /// OS is the machine's operating system label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// Plan is the provider plan label (e.g. \"Claude Max\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Provider is the AI provider this account belongs to (claude, openai, hanzo…).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Status is linked or revoked. Revoked rows are retained for history.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is when the link was last refreshed, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  Object? usage;

  /// User is the owning subject — the validated caller who registered the link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkView &&
    other.account == account &&
    other.billing == billing &&
    other.createdAt == createdAt &&
    other.host == host &&
    other.id == id &&
    other.kind == kind &&
    other.lastSeen == lastSeen &&
    other.machine == machine &&
    other.os == os &&
    other.plan == plan &&
    other.provider == provider &&
    other.status == status &&
    other.updatedAt == updatedAt &&
    other.usage == usage &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (billing == null ? 0 : billing!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (lastSeen == null ? 0 : lastSeen!.hashCode) +
    (machine == null ? 0 : machine!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (usage == null ? 0 : usage!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'LinkView[account=$account, billing=$billing, createdAt=$createdAt, host=$host, id=$id, kind=$kind, lastSeen=$lastSeen, machine=$machine, os=$os, plan=$plan, provider=$provider, status=$status, updatedAt=$updatedAt, usage=$usage, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.billing != null) {
      json[r'billing'] = this.billing;
    } else {
      json[r'billing'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.lastSeen != null) {
      json[r'lastSeen'] = this.lastSeen;
    } else {
      json[r'lastSeen'] = null;
    }
    if (this.machine != null) {
      json[r'machine'] = this.machine;
    } else {
      json[r'machine'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [LinkView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinkView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinkView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkView(
        account: mapValueOfType<String>(json, r'account'),
        billing: mapValueOfType<String>(json, r'billing'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        host: mapValueOfType<String>(json, r'host'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        lastSeen: mapValueOfType<String>(json, r'lastSeen'),
        machine: mapValueOfType<String>(json, r'machine'),
        os: mapValueOfType<String>(json, r'os'),
        plan: mapValueOfType<String>(json, r'plan'),
        provider: mapValueOfType<String>(json, r'provider'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        usage: mapValueOfType<Object>(json, r'usage'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<LinkView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkView> mapFromJson(dynamic json) {
    final map = <String, LinkView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkView-objects as value to a dart map
  static Map<String, List<LinkView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

