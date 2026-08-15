//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskPolicyVersion {
  /// Returns a new [RiskPolicyVersion] instance.
  RiskPolicyVersion({
    this.at,
    this.by,
    this.live,
    this.review,
    this.sample,
    this.version,
  });

  /// At is when it entered force, RFC 3339, from the server clock.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// By is the identity that stated it, stamped server-side from the validated principal at the moment it entered force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  /// Live is whether the model was permitted to change an outcome under it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  /// Review is the share of the stream the regime states may be examined. The threshold in force is derived from it, which is why a decision is only defensible against the version that produced it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? review;

  /// Sample is the share of below-the-line events the regime retains for review.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sample;

  /// Version names this regime in this organisation's history.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskPolicyVersion &&
    other.at == at &&
    other.by == by &&
    other.live == live &&
    other.review == review &&
    other.sample == sample &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (live == null ? 0 : live!.hashCode) +
    (review == null ? 0 : review!.hashCode) +
    (sample == null ? 0 : sample!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'RiskPolicyVersion[at=$at, by=$by, live=$live, review=$review, sample=$sample, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.review != null) {
      json[r'review'] = this.review;
    } else {
      json[r'review'] = null;
    }
    if (this.sample != null) {
      json[r'sample'] = this.sample;
    } else {
      json[r'sample'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [RiskPolicyVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskPolicyVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskPolicyVersion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskPolicyVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskPolicyVersion(
        at: mapValueOfType<String>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        live: mapValueOfType<bool>(json, r'live'),
        review: num.parse('${json[r'review']}'),
        sample: num.parse('${json[r'sample']}'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<RiskPolicyVersion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskPolicyVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskPolicyVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskPolicyVersion> mapFromJson(dynamic json) {
    final map = <String, RiskPolicyVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskPolicyVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskPolicyVersion-objects as value to a dart map
  static Map<String, List<RiskPolicyVersion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskPolicyVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskPolicyVersion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

