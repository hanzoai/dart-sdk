//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Filing {
  /// Returns a new [Filing] instance.
  Filing({
    this.at,
    this.note,
    this.provider,
    this.ref,
    this.status,
  });

  /// At is the unix second the filing record was written.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? at;

  /// Note explains a filing Hanzo did not perform itself: what remains to be done and by whom.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Provider is the filing partner that performed the filing, or \"manual\" when no partner is wired.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Ref is the partner's or the state's filing reference. Empty when nothing was actually filed — no filing id is ever fabricated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// Status is manual (no partner wired — a registered agent files out-of-band), submitted (the partner accepted it, awaiting the state), filed (the state accepted it) or rejected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Filing &&
    other.at == at &&
    other.note == note &&
    other.provider == provider &&
    other.ref == ref &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Filing[at=$at, note=$note, provider=$provider, ref=$ref, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Filing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Filing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Filing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Filing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Filing(
        at: mapValueOfType<int>(json, r'at'),
        note: mapValueOfType<String>(json, r'note'),
        provider: mapValueOfType<String>(json, r'provider'),
        ref: mapValueOfType<String>(json, r'ref'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Filing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Filing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Filing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Filing> mapFromJson(dynamic json) {
    final map = <String, Filing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Filing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Filing-objects as value to a dart map
  static Map<String, List<Filing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Filing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Filing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

