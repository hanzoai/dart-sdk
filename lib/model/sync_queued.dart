//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SyncQueued {
  /// Returns a new [SyncQueued] instance.
  SyncQueued({
    this.id,
    this.queued,
  });
  /// ID is the sync the reconcile was queued for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Queued is true when the reconcile was accepted; it has not run yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? queued;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SyncQueued &&
    other.id == id &&
    other.queued == queued;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (queued == null ? 0 : queued!.hashCode);

  @override
  String toString() => 'SyncQueued[id=$id, queued=$queued]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.queued != null) {
      json[r'queued'] = this.queued;
    } else {
      json[r'queued'] = null;
    }
    return json;
  }

  /// Returns a new [SyncQueued] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SyncQueued? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SyncQueued[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SyncQueued[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SyncQueued(
        id: mapValueOfType<String>(json, r'id'),
        queued: mapValueOfType<bool>(json, r'queued'),
      );
    }
    return null;
  }

  static List<SyncQueued> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SyncQueued>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SyncQueued.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SyncQueued> mapFromJson(dynamic json) {
    final map = <String, SyncQueued>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SyncQueued.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SyncQueued-objects as value to a dart map
  static Map<String, List<SyncQueued>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SyncQueued>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SyncQueued.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

