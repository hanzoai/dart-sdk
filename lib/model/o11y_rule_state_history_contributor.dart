//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yRuleStateHistoryContributor {
  /// Returns a new [O11yRuleStateHistoryContributor] instance.
  O11yRuleStateHistoryContributor({
    this.count,
    this.fingerprint,
    this.labels,
    this.relatedLogsLink,
    this.relatedTracesLink,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fingerprint;

  Object? labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relatedLogsLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relatedTracesLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yRuleStateHistoryContributor &&
    other.count == count &&
    other.fingerprint == fingerprint &&
    other.labels == labels &&
    other.relatedLogsLink == relatedLogsLink &&
    other.relatedTracesLink == relatedTracesLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (labels == null ? 0 : labels!.hashCode) +
    (relatedLogsLink == null ? 0 : relatedLogsLink!.hashCode) +
    (relatedTracesLink == null ? 0 : relatedTracesLink!.hashCode);

  @override
  String toString() => 'O11yRuleStateHistoryContributor[count=$count, fingerprint=$fingerprint, labels=$labels, relatedLogsLink=$relatedLogsLink, relatedTracesLink=$relatedTracesLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.labels != null) {
      json[r'labels'] = this.labels;
    } else {
      json[r'labels'] = null;
    }
    if (this.relatedLogsLink != null) {
      json[r'relatedLogsLink'] = this.relatedLogsLink;
    } else {
      json[r'relatedLogsLink'] = null;
    }
    if (this.relatedTracesLink != null) {
      json[r'relatedTracesLink'] = this.relatedTracesLink;
    } else {
      json[r'relatedTracesLink'] = null;
    }
    return json;
  }

  /// Returns a new [O11yRuleStateHistoryContributor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yRuleStateHistoryContributor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yRuleStateHistoryContributor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yRuleStateHistoryContributor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yRuleStateHistoryContributor(
        count: mapValueOfType<int>(json, r'count'),
        fingerprint: mapValueOfType<int>(json, r'fingerprint'),
        labels: mapValueOfType<Object>(json, r'labels'),
        relatedLogsLink: mapValueOfType<String>(json, r'relatedLogsLink'),
        relatedTracesLink: mapValueOfType<String>(json, r'relatedTracesLink'),
      );
    }
    return null;
  }

  static List<O11yRuleStateHistoryContributor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yRuleStateHistoryContributor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yRuleStateHistoryContributor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yRuleStateHistoryContributor> mapFromJson(dynamic json) {
    final map = <String, O11yRuleStateHistoryContributor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yRuleStateHistoryContributor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yRuleStateHistoryContributor-objects as value to a dart map
  static Map<String, List<O11yRuleStateHistoryContributor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yRuleStateHistoryContributor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yRuleStateHistoryContributor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

