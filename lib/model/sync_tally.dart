//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SyncTally {
  /// Returns a new [SyncTally] instance.
  SyncTally({
    this.live,
    this.sandbox,
  });

  /// Live is the number of vouchers newly posted to the live ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? live;

  /// Sandbox is the number newly posted to the sandbox ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sandbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SyncTally &&
    other.live == live &&
    other.sandbox == sandbox;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (live == null ? 0 : live!.hashCode) +
    (sandbox == null ? 0 : sandbox!.hashCode);

  @override
  String toString() => 'SyncTally[live=$live, sandbox=$sandbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.sandbox != null) {
      json[r'sandbox'] = this.sandbox;
    } else {
      json[r'sandbox'] = null;
    }
    return json;
  }

  /// Returns a new [SyncTally] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SyncTally? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SyncTally[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SyncTally[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SyncTally(
        live: mapValueOfType<int>(json, r'live'),
        sandbox: mapValueOfType<int>(json, r'sandbox'),
      );
    }
    return null;
  }

  static List<SyncTally> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SyncTally>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SyncTally.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SyncTally> mapFromJson(dynamic json) {
    final map = <String, SyncTally>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SyncTally.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SyncTally-objects as value to a dart map
  static Map<String, List<SyncTally>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SyncTally>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SyncTally.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

