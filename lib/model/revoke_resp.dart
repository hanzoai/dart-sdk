//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RevokeResp {
  /// Returns a new [RevokeResp] instance.
  RevokeResp({
    this.links = const [],
    this.revoked,
    this.sessionsStopped,
  });

  /// Links is each revoked row with its new status — retained, not deleted, so usage history and the audit trail survive the log-out.
  List<LinkView> links;

  /// Revoked is how many links this call revoked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revoked;

  /// SessionsStopped is how many of the caller's own agent sessions stopped. A stop that fails does not fail the revoke, so this may honestly report fewer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sessionsStopped;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokeResp &&
    _deepEquality.equals(other.links, links) &&
    other.revoked == revoked &&
    other.sessionsStopped == sessionsStopped;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links.hashCode) +
    (revoked == null ? 0 : revoked!.hashCode) +
    (sessionsStopped == null ? 0 : sessionsStopped!.hashCode);

  @override
  String toString() => 'RevokeResp[links=$links, revoked=$revoked, sessionsStopped=$sessionsStopped]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'links'] = this.links;
    if (this.revoked != null) {
      json[r'revoked'] = this.revoked;
    } else {
      json[r'revoked'] = null;
    }
    if (this.sessionsStopped != null) {
      json[r'sessionsStopped'] = this.sessionsStopped;
    } else {
      json[r'sessionsStopped'] = null;
    }
    return json;
  }

  /// Returns a new [RevokeResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokeResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevokeResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevokeResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevokeResp(
        links: LinkView.listFromJson(json[r'links']),
        revoked: mapValueOfType<int>(json, r'revoked'),
        sessionsStopped: mapValueOfType<int>(json, r'sessionsStopped'),
      );
    }
    return null;
  }

  static List<RevokeResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokeResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokeResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokeResp> mapFromJson(dynamic json) {
    final map = <String, RevokeResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokeResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokeResp-objects as value to a dart map
  static Map<String, List<RevokeResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokeResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokeResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

