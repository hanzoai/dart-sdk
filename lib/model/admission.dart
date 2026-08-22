//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Admission {
  /// Returns a new [Admission] instance.
  Admission({
    this.benchmarks = const [],
    this.endpoint,
    this.model,
    this.note,
    this.status,
  });
  /// Benchmarks are the catalog ids admitted.
  List<String> benchmarks;

  /// Endpoint is the caller's own endpoint the run targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  /// Model is the catalog model the run targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Note explains what admission does and does not promise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Status is \"queued\": the run is admitted, not finished.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Admission &&
    _deepEquality.equals(other.benchmarks, benchmarks) &&
    other.endpoint == endpoint &&
    other.model == model &&
    other.note == note &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (benchmarks.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Admission[benchmarks=$benchmarks, endpoint=$endpoint, model=$model, note=$note, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'benchmarks'] = this.benchmarks;
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Admission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Admission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Admission[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Admission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Admission(
        benchmarks: json[r'benchmarks'] is Iterable
            ? (json[r'benchmarks'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        model: mapValueOfType<String>(json, r'model'),
        note: mapValueOfType<String>(json, r'note'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Admission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Admission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Admission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Admission> mapFromJson(dynamic json) {
    final map = <String, Admission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Admission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Admission-objects as value to a dart map
  static Map<String, List<Admission>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Admission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Admission.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

