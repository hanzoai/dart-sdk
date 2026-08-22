//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PresetAccepted {
  /// Returns a new [PresetAccepted] instance.
  PresetAccepted({
    this.note,
    this.preset,
    this.servedAs,
    this.status,
  });
  /// Note explains what acceptance does and does not promise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Preset is the blend with its defaults filled in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Preset? preset;

  /// ServedAs is the model id the serving layer would resolve this blend under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servedAs;

  /// Status is \"accepted\": the blend is well-formed, not that it is now served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PresetAccepted &&
    other.note == note &&
    other.preset == preset &&
    other.servedAs == servedAs &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (note == null ? 0 : note!.hashCode) +
    (preset == null ? 0 : preset!.hashCode) +
    (servedAs == null ? 0 : servedAs!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'PresetAccepted[note=$note, preset=$preset, servedAs=$servedAs, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.preset != null) {
      json[r'preset'] = this.preset;
    } else {
      json[r'preset'] = null;
    }
    if (this.servedAs != null) {
      json[r'served_as'] = this.servedAs;
    } else {
      json[r'served_as'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [PresetAccepted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PresetAccepted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PresetAccepted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PresetAccepted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PresetAccepted(
        note: mapValueOfType<String>(json, r'note'),
        preset: Preset.fromJson(json[r'preset']),
        servedAs: mapValueOfType<String>(json, r'served_as'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<PresetAccepted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PresetAccepted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PresetAccepted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PresetAccepted> mapFromJson(dynamic json) {
    final map = <String, PresetAccepted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PresetAccepted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PresetAccepted-objects as value to a dart map
  static Map<String, List<PresetAccepted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PresetAccepted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PresetAccepted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

