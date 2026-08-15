//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SpanBody {
  /// Returns a new [SpanBody] instance.
  SpanBody({
    this.duration,
    this.id,
    this.kind,
    this.parent,
    this.status,
    this.trace,
  });

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
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpanBody &&
    other.duration == duration &&
    other.id == id &&
    other.kind == kind &&
    other.parent == parent &&
    other.status == status &&
    other.trace == trace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duration == null ? 0 : duration!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (trace == null ? 0 : trace!.hashCode);

  @override
  String toString() => 'SpanBody[duration=$duration, id=$id, kind=$kind, parent=$parent, status=$status, trace=$trace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.trace != null) {
      json[r'trace'] = this.trace;
    } else {
      json[r'trace'] = null;
    }
    return json;
  }

  /// Returns a new [SpanBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpanBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpanBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpanBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpanBody(
        duration: mapValueOfType<int>(json, r'duration'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        parent: mapValueOfType<String>(json, r'parent'),
        status: mapValueOfType<String>(json, r'status'),
        trace: mapValueOfType<String>(json, r'trace'),
      );
    }
    return null;
  }

  static List<SpanBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpanBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpanBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpanBody> mapFromJson(dynamic json) {
    final map = <String, SpanBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpanBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpanBody-objects as value to a dart map
  static Map<String, List<SpanBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpanBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpanBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

