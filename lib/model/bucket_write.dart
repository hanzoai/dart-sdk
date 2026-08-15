//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BucketWrite {
  /// Returns a new [BucketWrite] instance.
  BucketWrite({
    this.bucket,
    this.history,
    this.maxValue,
    this.ttl,
  });

  /// Bucket is the bucket's name within the org, from the path: 1–64 of [A-Za-z0-9_], no dash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// History is how many revisions each key keeps, 1–64. 0 means 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? history;

  /// MaxValue caps one value's size in bytes. 0 or less means the server's ceiling.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxValue;

  /// TTL expires entries after this many SECONDS. 0 means no expiry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BucketWrite &&
    other.bucket == bucket &&
    other.history == history &&
    other.maxValue == maxValue &&
    other.ttl == ttl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket == null ? 0 : bucket!.hashCode) +
    (history == null ? 0 : history!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (ttl == null ? 0 : ttl!.hashCode);

  @override
  String toString() => 'BucketWrite[bucket=$bucket, history=$history, maxValue=$maxValue, ttl=$ttl]';

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
    if (this.maxValue != null) {
      json[r'maxValue'] = this.maxValue;
    } else {
      json[r'maxValue'] = null;
    }
    if (this.ttl != null) {
      json[r'ttl'] = this.ttl;
    } else {
      json[r'ttl'] = null;
    }
    return json;
  }

  /// Returns a new [BucketWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BucketWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BucketWrite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BucketWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BucketWrite(
        bucket: mapValueOfType<String>(json, r'bucket'),
        history: mapValueOfType<int>(json, r'history'),
        maxValue: mapValueOfType<int>(json, r'maxValue'),
        ttl: mapValueOfType<int>(json, r'ttl'),
      );
    }
    return null;
  }

  static List<BucketWrite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BucketWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BucketWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BucketWrite> mapFromJson(dynamic json) {
    final map = <String, BucketWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BucketWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BucketWrite-objects as value to a dart map
  static Map<String, List<BucketWrite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BucketWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BucketWrite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

