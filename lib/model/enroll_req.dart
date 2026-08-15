//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnrollReq {
  /// Returns a new [EnrollReq] instance.
  EnrollReq({
    this.account,
    this.host,
    this.kind,
    this.machine,
    this.os,
    this.plan,
    this.provider,
    this.usage,
  });

  /// Account is the provider-side account identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Host is the machine's human hostname label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Kind decides how the account's inference BILLS and defaults to subscription: a subscription account bills the user's own monthly plan and is metered here for visibility only, while an apikey account bills through commerce on the gateway path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Machine is the stable machine identifier. Required, length-bounded.
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

  /// Provider is the AI provider the account belongs to. Required, length-bounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  Object? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnrollReq &&
    other.account == account &&
    other.host == host &&
    other.kind == kind &&
    other.machine == machine &&
    other.os == os &&
    other.plan == plan &&
    other.provider == provider &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (machine == null ? 0 : machine!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'EnrollReq[account=$account, host=$host, kind=$kind, machine=$machine, os=$os, plan=$plan, provider=$provider, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
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
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [EnrollReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnrollReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnrollReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnrollReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnrollReq(
        account: mapValueOfType<String>(json, r'account'),
        host: mapValueOfType<String>(json, r'host'),
        kind: mapValueOfType<String>(json, r'kind'),
        machine: mapValueOfType<String>(json, r'machine'),
        os: mapValueOfType<String>(json, r'os'),
        plan: mapValueOfType<String>(json, r'plan'),
        provider: mapValueOfType<String>(json, r'provider'),
        usage: mapValueOfType<Object>(json, r'usage'),
      );
    }
    return null;
  }

  static List<EnrollReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnrollReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnrollReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnrollReq> mapFromJson(dynamic json) {
    final map = <String, EnrollReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnrollReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnrollReq-objects as value to a dart map
  static Map<String, List<EnrollReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnrollReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnrollReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

