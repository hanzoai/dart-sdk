//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Verdict {
  /// Returns a new [Verdict] instance.
  Verdict({
    this.builds,
    this.commit,
    this.fired,
    this.org,
    this.reason,
    this.ref,
    this.repo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? builds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fired;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

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
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Verdict &&
    other.builds == builds &&
    other.commit == commit &&
    other.fired == fired &&
    other.org == org &&
    other.reason == reason &&
    other.ref == ref &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (builds == null ? 0 : builds!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (fired == null ? 0 : fired!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'Verdict[builds=$builds, commit=$commit, fired=$fired, org=$org, reason=$reason, ref=$ref, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.builds != null) {
      json[r'builds'] = this.builds;
    } else {
      json[r'builds'] = null;
    }
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
    if (this.fired != null) {
      json[r'fired'] = this.fired;
    } else {
      json[r'fired'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [Verdict] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Verdict? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Verdict[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Verdict[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Verdict(
        builds: mapValueOfType<int>(json, r'builds'),
        commit: mapValueOfType<String>(json, r'commit'),
        fired: mapValueOfType<bool>(json, r'fired'),
        org: mapValueOfType<String>(json, r'org'),
        reason: mapValueOfType<String>(json, r'reason'),
        ref: mapValueOfType<String>(json, r'ref'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<Verdict> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Verdict>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Verdict.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Verdict> mapFromJson(dynamic json) {
    final map = <String, Verdict>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Verdict.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Verdict-objects as value to a dart map
  static Map<String, List<Verdict>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Verdict>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Verdict.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

