//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yOldAWSCollectionStrategy {
  /// Returns a new [O11yOldAWSCollectionStrategy] instance.
  O11yOldAWSCollectionStrategy({
    this.awsLogs,
    this.awsMetrics,
    this.provider,
    this.s3Buckets = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yOldAWSLogsStrategy? awsLogs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yOldAWSMetricsStrategy? awsMetrics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  Map<String, List<String>> s3Buckets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yOldAWSCollectionStrategy &&
    other.awsLogs == awsLogs &&
    other.awsMetrics == awsMetrics &&
    other.provider == provider &&
    _deepEquality.equals(other.s3Buckets, s3Buckets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (awsLogs == null ? 0 : awsLogs!.hashCode) +
    (awsMetrics == null ? 0 : awsMetrics!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (s3Buckets.hashCode);

  @override
  String toString() => 'O11yOldAWSCollectionStrategy[awsLogs=$awsLogs, awsMetrics=$awsMetrics, provider=$provider, s3Buckets=$s3Buckets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.awsLogs != null) {
      json[r'aws_logs'] = this.awsLogs;
    } else {
      json[r'aws_logs'] = null;
    }
    if (this.awsMetrics != null) {
      json[r'aws_metrics'] = this.awsMetrics;
    } else {
      json[r'aws_metrics'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r's3_buckets'] = this.s3Buckets;
    return json;
  }

  /// Returns a new [O11yOldAWSCollectionStrategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yOldAWSCollectionStrategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yOldAWSCollectionStrategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yOldAWSCollectionStrategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yOldAWSCollectionStrategy(
        awsLogs: O11yOldAWSLogsStrategy.fromJson(json[r'aws_logs']),
        awsMetrics: O11yOldAWSMetricsStrategy.fromJson(json[r'aws_metrics']),
        provider: mapValueOfType<String>(json, r'provider'),
        s3Buckets: json[r's3_buckets'] == null
          ? const {}
            : (json[r's3_buckets'] as Map).map((k, v) => MapEntry(k as String, v == null ? const <String>[] : (v as List).cast<String>().toList(growable: false))),
      );
    }
    return null;
  }

  static List<O11yOldAWSCollectionStrategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yOldAWSCollectionStrategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yOldAWSCollectionStrategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yOldAWSCollectionStrategy> mapFromJson(dynamic json) {
    final map = <String, O11yOldAWSCollectionStrategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yOldAWSCollectionStrategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yOldAWSCollectionStrategy-objects as value to a dart map
  static Map<String, List<O11yOldAWSCollectionStrategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yOldAWSCollectionStrategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yOldAWSCollectionStrategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

