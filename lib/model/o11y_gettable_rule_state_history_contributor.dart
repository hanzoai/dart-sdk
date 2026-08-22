//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableRuleStateHistoryContributor {
  /// Returns a new [O11yGettableRuleStateHistoryContributor] instance.
  O11yGettableRuleStateHistoryContributor({
    this.count,
    this.fingerprint,
    this.labels = const [],
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

  List<O11yLabel> labels;

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
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableRuleStateHistoryContributor &&
    other.count == count &&
    other.fingerprint == fingerprint &&
    _deepEquality.equals(other.labels, labels) &&
    other.relatedLogsLink == relatedLogsLink &&
    other.relatedTracesLink == relatedTracesLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (labels.hashCode) +
    (relatedLogsLink == null ? 0 : relatedLogsLink!.hashCode) +
    (relatedTracesLink == null ? 0 : relatedTracesLink!.hashCode);

  @override
  String toString() => 'O11yGettableRuleStateHistoryContributor[count=$count, fingerprint=$fingerprint, labels=$labels, relatedLogsLink=$relatedLogsLink, relatedTracesLink=$relatedTracesLink]';

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
      json[r'labels'] = this.labels;
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

  /// Returns a new [O11yGettableRuleStateHistoryContributor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableRuleStateHistoryContributor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableRuleStateHistoryContributor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableRuleStateHistoryContributor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableRuleStateHistoryContributor(
        count: mapValueOfType<int>(json, r'count'),
        fingerprint: mapValueOfType<int>(json, r'fingerprint'),
        labels: O11yLabel.listFromJson(json[r'labels']),
        relatedLogsLink: mapValueOfType<String>(json, r'relatedLogsLink'),
        relatedTracesLink: mapValueOfType<String>(json, r'relatedTracesLink'),
      );
    }
    return null;
  }

  static List<O11yGettableRuleStateHistoryContributor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableRuleStateHistoryContributor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableRuleStateHistoryContributor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableRuleStateHistoryContributor> mapFromJson(dynamic json) {
    final map = <String, O11yGettableRuleStateHistoryContributor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableRuleStateHistoryContributor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableRuleStateHistoryContributor-objects as value to a dart map
  static Map<String, List<O11yGettableRuleStateHistoryContributor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableRuleStateHistoryContributor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableRuleStateHistoryContributor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

