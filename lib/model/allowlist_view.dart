//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AllowlistView {
  /// Returns a new [AllowlistView] instance.
  AllowlistView({
    this.accessGroups = const {},
    this.dm = const [],
    this.dmPolicy,
    this.group = const [],
    this.groupPolicy,
    this.paired = const [],
  });
  /// AccessGroups is the org's named sender sets, as group name -> channel -> member entries, held once for the whole org. A DM or Group entry written `accessGroup:<name>` admits any sender listed under that name for THIS channel, or under the channel `*`, which is how one set covers all four transports. Replaced wholesale by the PUT.
  Map<String, Map<String, List<String>>> accessGroups;

  /// DM is the CONFIG-managed DM allow entries — the list PUT /v1/channels/allowlist owns and replaces wholesale. An entry matches a sender either EXACTLY, as the transport-native id inbox messages carry, or as `accessGroup:<name>` resolved through AccessGroups. A bare `*` admits everyone, but only while DMPolicy is \"open\": it is gate syntax, not an identity, so under \"allowlist\" it matches nobody.
  List<String> dm;

  /// DMPolicy decides every inbound DIRECT message, defaulting to \"pairing\" when the org has never set one. \"pairing\": a sender with no entry is sent a pairing code and the message is DROPPED — it never reaches the inbox — and they are admitted only once an admin approves. \"allowlist\": only DM admits, and Paired senders are suspended, since a pairing grant counts under \"pairing\" alone. \"open\" is not unconditional either — it still requires `*` or a matching entry in DM.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dmPolicy;

  /// Group is the CONFIG-managed group allow entries, consulted only while GroupPolicy is \"allowlist\". Entries match the same two ways as DM, and here a bare `*` admits every sender in the room.
  List<String> group;

  /// GroupPolicy decides every inbound GROUP or THREAD message — a thread is a group surface — defaulting to \"open\". \"open\" admits every sender in the room. \"allowlist\" admits only what Group lists, so an EMPTY Group blocks the channel's group rooms outright. \"disabled\" drops all of them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupPolicy;

  /// Paired is the senders admitted by PAIRING — the entries POST /v1/channels/pairing/approve minted, DM scope only. READ-ONLY on this endpoint: the PUT writes config entries and can never revoke one of these (listing a paired sender under DM instead promotes that entry to config, which the admin then owns). They admit only while DMPolicy is \"pairing\".
  List<String> paired;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AllowlistView &&
    _deepEquality.equals(other.accessGroups, accessGroups) &&
    _deepEquality.equals(other.dm, dm) &&
    other.dmPolicy == dmPolicy &&
    _deepEquality.equals(other.group, group) &&
    other.groupPolicy == groupPolicy &&
    _deepEquality.equals(other.paired, paired);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessGroups.hashCode) +
    (dm.hashCode) +
    (dmPolicy == null ? 0 : dmPolicy!.hashCode) +
    (group.hashCode) +
    (groupPolicy == null ? 0 : groupPolicy!.hashCode) +
    (paired.hashCode);

  @override
  String toString() => 'AllowlistView[accessGroups=$accessGroups, dm=$dm, dmPolicy=$dmPolicy, group=$group, groupPolicy=$groupPolicy, paired=$paired]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessGroups'] = this.accessGroups;
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
      json[r'paired'] = this.paired;
    return json;
  }

  /// Returns a new [AllowlistView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AllowlistView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AllowlistView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AllowlistView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AllowlistView(
        accessGroups: json[r'accessGroups'] is Map
            ? (json[r'accessGroups'] as Map).map((k, v) => MapEntry(k as String, (v as Map).map((k2, v2) => MapEntry(k2 as String, v2 == null ? const <String>[] : (v2 as List).cast<String>().toList(growable: false)))))
            : const {},
        dm: json[r'dm'] is Iterable
            ? (json[r'dm'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dmPolicy: mapValueOfType<String>(json, r'dmPolicy'),
        group: json[r'group'] is Iterable
            ? (json[r'group'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        groupPolicy: mapValueOfType<String>(json, r'groupPolicy'),
        paired: json[r'paired'] is Iterable
            ? (json[r'paired'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AllowlistView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AllowlistView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AllowlistView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AllowlistView> mapFromJson(dynamic json) {
    final map = <String, AllowlistView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AllowlistView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AllowlistView-objects as value to a dart map
  static Map<String, List<AllowlistView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AllowlistView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AllowlistView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

