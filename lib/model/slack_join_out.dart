//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SlackJoinOut {
  /// Returns a new [SlackJoinOut] instance.
  SlackJoinOut({
    this.already,
    this.failed = const [],
    this.joined = const [],
    this.listed,
  });
  /// Already counts the channels it was a member of before, kept apart from Joined because only one of the two is a change.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? already;

  /// Failed is per-channel, so one refusal does not hide the rest of the walk.
  List<JoinFailure> failed;

  /// Joined names the channels this run walked into — the change it made.
  List<String> joined;

  /// Listed is every public, unarchived channel the workspace has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? listed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlackJoinOut &&
    other.already == already &&
    _deepEquality.equals(other.failed, failed) &&
    _deepEquality.equals(other.joined, joined) &&
    other.listed == listed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (already == null ? 0 : already!.hashCode) +
    (failed.hashCode) +
    (joined.hashCode) +
    (listed == null ? 0 : listed!.hashCode);

  @override
  String toString() => 'SlackJoinOut[already=$already, failed=$failed, joined=$joined, listed=$listed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.already != null) {
      json[r'already'] = this.already;
    } else {
      json[r'already'] = null;
    }
      json[r'failed'] = this.failed;
      json[r'joined'] = this.joined;
    if (this.listed != null) {
      json[r'listed'] = this.listed;
    } else {
      json[r'listed'] = null;
    }
    return json;
  }

  /// Returns a new [SlackJoinOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlackJoinOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SlackJoinOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SlackJoinOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SlackJoinOut(
        already: mapValueOfType<int>(json, r'already'),
        failed: JoinFailure.listFromJson(json[r'failed']),
        joined: json[r'joined'] is Iterable
            ? (json[r'joined'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        listed: mapValueOfType<int>(json, r'listed'),
      );
    }
    return null;
  }

  static List<SlackJoinOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlackJoinOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlackJoinOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlackJoinOut> mapFromJson(dynamic json) {
    final map = <String, SlackJoinOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlackJoinOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlackJoinOut-objects as value to a dart map
  static Map<String, List<SlackJoinOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlackJoinOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlackJoinOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

