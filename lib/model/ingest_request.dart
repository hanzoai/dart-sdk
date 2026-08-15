//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngestRequest {
  /// Returns a new [IngestRequest] instance.
  IngestRequest({
    this.attempts = const [],
    this.experiments = const [],
  });

  List<Attempt> attempts;

  List<Experiment> experiments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngestRequest &&
    _deepEquality.equals(other.attempts, attempts) &&
    _deepEquality.equals(other.experiments, experiments);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attempts.hashCode) +
    (experiments.hashCode);

  @override
  String toString() => 'IngestRequest[attempts=$attempts, experiments=$experiments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attempts'] = this.attempts;
      json[r'experiments'] = this.experiments;
    return json;
  }

  /// Returns a new [IngestRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngestRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngestRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngestRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngestRequest(
        attempts: Attempt.listFromJson(json[r'attempts']),
        experiments: Experiment.listFromJson(json[r'experiments']),
      );
    }
    return null;
  }

  static List<IngestRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngestRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngestRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngestRequest> mapFromJson(dynamic json) {
    final map = <String, IngestRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngestRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngestRequest-objects as value to a dart map
  static Map<String, List<IngestRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngestRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngestRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

