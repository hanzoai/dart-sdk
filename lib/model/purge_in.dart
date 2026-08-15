//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PurgeIn {
  /// Returns a new [PurgeIn] instance.
  PurgeIn({
    this.files = const [],
    this.purgeEverything,
    this.zone,
  });

  /// Files purges exactly the listed URLs — at most 30, Cloudflare's per-request cap.
  List<String> files;

  /// Everything drops the zone's entire edge cache.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? purgeEverything;

  /// Zone is the 32-hex Cloudflare zone id, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PurgeIn &&
    _deepEquality.equals(other.files, files) &&
    other.purgeEverything == purgeEverything &&
    other.zone == zone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files.hashCode) +
    (purgeEverything == null ? 0 : purgeEverything!.hashCode) +
    (zone == null ? 0 : zone!.hashCode);

  @override
  String toString() => 'PurgeIn[files=$files, purgeEverything=$purgeEverything, zone=$zone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'files'] = this.files;
    if (this.purgeEverything != null) {
      json[r'purge_everything'] = this.purgeEverything;
    } else {
      json[r'purge_everything'] = null;
    }
    if (this.zone != null) {
      json[r'zone'] = this.zone;
    } else {
      json[r'zone'] = null;
    }
    return json;
  }

  /// Returns a new [PurgeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PurgeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PurgeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PurgeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PurgeIn(
        files: json[r'files'] is Iterable
            ? (json[r'files'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        purgeEverything: mapValueOfType<bool>(json, r'purge_everything'),
        zone: mapValueOfType<String>(json, r'zone'),
      );
    }
    return null;
  }

  static List<PurgeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PurgeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PurgeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PurgeIn> mapFromJson(dynamic json) {
    final map = <String, PurgeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PurgeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PurgeIn-objects as value to a dart map
  static Map<String, List<PurgeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PurgeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PurgeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

