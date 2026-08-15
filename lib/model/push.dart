//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Push {
  /// Returns a new [Push] instance.
  Push({
    this.after,
    this.before,
    this.pusher,
    this.ref,
    this.repository,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? after;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? before;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PushPusher? pusher;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PushRepository? repository;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Push &&
    other.after == after &&
    other.before == before &&
    other.pusher == pusher &&
    other.ref == ref &&
    other.repository == repository;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (after == null ? 0 : after!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (pusher == null ? 0 : pusher!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (repository == null ? 0 : repository!.hashCode);

  @override
  String toString() => 'Push[after=$after, before=$before, pusher=$pusher, ref=$ref, repository=$repository]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.after != null) {
      json[r'after'] = this.after;
    } else {
      json[r'after'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before;
    } else {
      json[r'before'] = null;
    }
    if (this.pusher != null) {
      json[r'pusher'] = this.pusher;
    } else {
      json[r'pusher'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.repository != null) {
      json[r'repository'] = this.repository;
    } else {
      json[r'repository'] = null;
    }
    return json;
  }

  /// Returns a new [Push] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Push? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Push[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Push[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Push(
        after: mapValueOfType<String>(json, r'after'),
        before: mapValueOfType<String>(json, r'before'),
        pusher: PushPusher.fromJson(json[r'pusher']),
        ref: mapValueOfType<String>(json, r'ref'),
        repository: PushRepository.fromJson(json[r'repository']),
      );
    }
    return null;
  }

  static List<Push> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Push>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Push.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Push> mapFromJson(dynamic json) {
    final map = <String, Push>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Push.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Push-objects as value to a dart map
  static Map<String, List<Push>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Push>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Push.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

