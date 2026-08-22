//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BucketRecord {
  /// Returns a new [BucketRecord] instance.
  BucketRecord({
    this.bucket,
    this.history,
    this.ttl,
    this.values,
  });
  /// Bucket is the bucket's name within the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// History is how many revisions each key keeps.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? history;

  /// TTL is the entry expiry in seconds; 0 means none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttl;

  /// Values is how many values the bucket holds right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BucketRecord &&
    other.bucket == bucket &&
    other.history == history &&
    other.ttl == ttl &&
    other.values == values;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket == null ? 0 : bucket!.hashCode) +
    (history == null ? 0 : history!.hashCode) +
    (ttl == null ? 0 : ttl!.hashCode) +
    (values == null ? 0 : values!.hashCode);

  @override
  String toString() => 'BucketRecord[bucket=$bucket, history=$history, ttl=$ttl, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
    if (this.history != null) {
      json[r'history'] = this.history;
    } else {
      json[r'history'] = null;
    }
    if (this.ttl != null) {
      json[r'ttl'] = this.ttl;
    } else {
      json[r'ttl'] = null;
    }
    if (this.values != null) {
      json[r'values'] = this.values;
    } else {
      json[r'values'] = null;
    }
    return json;
  }

  /// Returns a new [BucketRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BucketRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BucketRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BucketRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BucketRecord(
        bucket: mapValueOfType<String>(json, r'bucket'),
        history: mapValueOfType<int>(json, r'history'),
        ttl: mapValueOfType<int>(json, r'ttl'),
        values: mapValueOfType<int>(json, r'values'),
      );
    }
    return null;
  }

  static List<BucketRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BucketRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BucketRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BucketRecord> mapFromJson(dynamic json) {
    final map = <String, BucketRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BucketRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BucketRecord-objects as value to a dart map
  static Map<String, List<BucketRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BucketRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BucketRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

