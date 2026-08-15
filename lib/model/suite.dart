//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Suite {
  /// Returns a new [Suite] instance.
  Suite({
    this.attempts,
    this.benchmarks = const [],
    this.endpoint,
    this.model,
  });

  /// Attempts is how many times to try each item; the harness's default applies when it is omitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? attempts;

  /// Benchmarks are the catalog ids to run. At least one is required, and every id must be in the catalog.
  List<String> benchmarks;

  /// Endpoint is your own chat-completions URL, for benchmarking a model this arena does not host. Either this or model is required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  /// Model is the catalog model id to run. Either this or endpoint is required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Suite &&
    other.attempts == attempts &&
    _deepEquality.equals(other.benchmarks, benchmarks) &&
    other.endpoint == endpoint &&
    other.model == model;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attempts == null ? 0 : attempts!.hashCode) +
    (benchmarks.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (model == null ? 0 : model!.hashCode);

  @override
  String toString() => 'Suite[attempts=$attempts, benchmarks=$benchmarks, endpoint=$endpoint, model=$model]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attempts != null) {
      json[r'attempts'] = this.attempts;
    } else {
      json[r'attempts'] = null;
    }
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
    return json;
  }

  /// Returns a new [Suite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Suite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Suite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Suite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Suite(
        attempts: mapValueOfType<int>(json, r'attempts'),
        benchmarks: json[r'benchmarks'] is Iterable
            ? (json[r'benchmarks'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        model: mapValueOfType<String>(json, r'model'),
      );
    }
    return null;
  }

  static List<Suite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Suite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Suite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Suite> mapFromJson(dynamic json) {
    final map = <String, Suite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Suite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Suite-objects as value to a dart map
  static Map<String, List<Suite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Suite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Suite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'benchmarks',
  };
}

