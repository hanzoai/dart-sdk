//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GcOut {
  /// Returns a new [GcOut] instance.
  GcOut({
    this.maintained,
    this.repo,
    this.sizeBytes,
  });

  /// Maintained is always true; the call fails rather than reporting false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? maintained;

  /// Repo is the repo that was repacked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// SizeBytes is the size measured AFTER the repack — usually smaller, since repacking drops the packs it supersedes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GcOut &&
    other.maintained == maintained &&
    other.repo == repo &&
    other.sizeBytes == sizeBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maintained == null ? 0 : maintained!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes!.hashCode);

  @override
  String toString() => 'GcOut[maintained=$maintained, repo=$repo, sizeBytes=$sizeBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maintained != null) {
      json[r'maintained'] = this.maintained;
    } else {
      json[r'maintained'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.sizeBytes != null) {
      json[r'sizeBytes'] = this.sizeBytes;
    } else {
      json[r'sizeBytes'] = null;
    }
    return json;
  }

  /// Returns a new [GcOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GcOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GcOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GcOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GcOut(
        maintained: mapValueOfType<bool>(json, r'maintained'),
        repo: mapValueOfType<String>(json, r'repo'),
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes'),
      );
    }
    return null;
  }

  static List<GcOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GcOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GcOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GcOut> mapFromJson(dynamic json) {
    final map = <String, GcOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GcOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GcOut-objects as value to a dart map
  static Map<String, List<GcOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GcOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GcOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

