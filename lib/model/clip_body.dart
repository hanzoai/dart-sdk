//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClipBody {
  /// Returns a new [ClipBody] instance.
  ClipBody({
    this.bytes,
    this.duration,
    this.object,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClipBody &&
    other.bytes == bytes &&
    other.duration == duration &&
    other.object == object;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (object == null ? 0 : object!.hashCode);

  @override
  String toString() => 'ClipBody[bytes=$bytes, duration=$duration, object=$object]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    return json;
  }

  /// Returns a new [ClipBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClipBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClipBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClipBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClipBody(
        bytes: mapValueOfType<int>(json, r'bytes'),
        duration: mapValueOfType<int>(json, r'duration'),
        object: mapValueOfType<String>(json, r'object'),
      );
    }
    return null;
  }

  static List<ClipBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClipBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClipBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClipBody> mapFromJson(dynamic json) {
    final map = <String, ClipBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClipBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClipBody-objects as value to a dart map
  static Map<String, List<ClipBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClipBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClipBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

