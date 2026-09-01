//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AllowlistPutIn {
  /// Returns a new [AllowlistPutIn] instance.
  AllowlistPutIn({
    this.accessGroups = const {},
    this.channel,
    this.dm = const [],
    this.dmPolicy,
    this.group = const [],
    this.groupPolicy,
  });
  /// AccessGroups REPLACES the org's named access groups, as group name -> channel -> entries. Absent or null leaves them alone.
  Map<String, Map<String, List<String>>> accessGroups;

  /// Channel is the transport to edit: discord, github, linear, slack, teams, telegram or whatsapp. Required; an unknown value is a 404.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// DM REPLACES the config-managed DM allow entries. Absent or null leaves them alone; an empty list clears them. It never touches senders approved through pairing — a policy edit cannot revoke an approved pairing.
  List<String> dm;

  /// DMPolicy sets how direct messages are admitted: \"pairing\" (a person must be approved first), \"allowlist\" (only listed senders) or \"open\". Empty leaves it unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dmPolicy;

  /// Group REPLACES the config-managed group allow entries. Absent or null leaves them alone; an empty list clears them.
  List<String> group;

  /// GroupPolicy sets how group and thread rooms are admitted: \"open\", \"allowlist\" or \"disabled\". Empty leaves it unchanged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupPolicy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AllowlistPutIn &&
    _deepEquality.equals(other.accessGroups, accessGroups) &&
    other.channel == channel &&
    _deepEquality.equals(other.dm, dm) &&
    other.dmPolicy == dmPolicy &&
    _deepEquality.equals(other.group, group) &&
    other.groupPolicy == groupPolicy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessGroups.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (dm.hashCode) +
    (dmPolicy == null ? 0 : dmPolicy!.hashCode) +
    (group.hashCode) +
    (groupPolicy == null ? 0 : groupPolicy!.hashCode);

  @override
  String toString() => 'AllowlistPutIn[accessGroups=$accessGroups, channel=$channel, dm=$dm, dmPolicy=$dmPolicy, group=$group, groupPolicy=$groupPolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessGroups'] = this.accessGroups;
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
      json[r'dm'] = this.dm;
    if (this.dmPolicy != null) {
      json[r'dmPolicy'] = this.dmPolicy;
    } else {
      json[r'dmPolicy'] = null;
    }
      json[r'group'] = this.group;
    if (this.groupPolicy != null) {
      json[r'groupPolicy'] = this.groupPolicy;
    } else {
      json[r'groupPolicy'] = null;
    }
    return json;
  }

  /// Returns a new [AllowlistPutIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AllowlistPutIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AllowlistPutIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AllowlistPutIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AllowlistPutIn(
        accessGroups: json[r'accessGroups'] is Map
            ? (json[r'accessGroups'] as Map).map((k, v) => MapEntry(k as String, (v as Map).map((k2, v2) => MapEntry(k2 as String, v2 == null ? const <String>[] : (v2 as List).cast<String>().toList(growable: false)))))
            : const {},
        channel: mapValueOfType<String>(json, r'channel'),
        dm: json[r'dm'] is Iterable
            ? (json[r'dm'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dmPolicy: mapValueOfType<String>(json, r'dmPolicy'),
        group: json[r'group'] is Iterable
            ? (json[r'group'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        groupPolicy: mapValueOfType<String>(json, r'groupPolicy'),
      );
    }
    return null;
  }

  static List<AllowlistPutIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AllowlistPutIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AllowlistPutIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AllowlistPutIn> mapFromJson(dynamic json) {
    final map = <String, AllowlistPutIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AllowlistPutIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AllowlistPutIn-objects as value to a dart map
  static Map<String, List<AllowlistPutIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AllowlistPutIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AllowlistPutIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

