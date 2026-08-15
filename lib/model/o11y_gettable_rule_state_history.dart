//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableRuleStateHistory {
  /// Returns a new [O11yGettableRuleStateHistory] instance.
  O11yGettableRuleStateHistory({
    this.fingerprint,
    this.labels = const [],
    this.overallState,
    this.overallStateChanged,
    this.ruleId,
    this.ruleName,
    this.state,
    this.stateChanged,
    this.unixMilli,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fingerprint;

  List<O11yLabel> labels;

  Object? overallState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? overallStateChanged;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleName;

  Object? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stateChanged;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unixMilli;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableRuleStateHistory &&
    other.fingerprint == fingerprint &&
    _deepEquality.equals(other.labels, labels) &&
    other.overallState == overallState &&
    other.overallStateChanged == overallStateChanged &&
    other.ruleId == ruleId &&
    other.ruleName == ruleName &&
    other.state == state &&
    other.stateChanged == stateChanged &&
    other.unixMilli == unixMilli &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (labels.hashCode) +
    (overallState == null ? 0 : overallState!.hashCode) +
    (overallStateChanged == null ? 0 : overallStateChanged!.hashCode) +
    (ruleId == null ? 0 : ruleId!.hashCode) +
    (ruleName == null ? 0 : ruleName!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (stateChanged == null ? 0 : stateChanged!.hashCode) +
    (unixMilli == null ? 0 : unixMilli!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yGettableRuleStateHistory[fingerprint=$fingerprint, labels=$labels, overallState=$overallState, overallStateChanged=$overallStateChanged, ruleId=$ruleId, ruleName=$ruleName, state=$state, stateChanged=$stateChanged, unixMilli=$unixMilli, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.overallState != null) {
      json[r'overallState'] = this.overallState;
    } else {
      json[r'overallState'] = null;
    }
    if (this.overallStateChanged != null) {
      json[r'overallStateChanged'] = this.overallStateChanged;
    } else {
      json[r'overallStateChanged'] = null;
    }
    if (this.ruleId != null) {
      json[r'ruleId'] = this.ruleId;
    } else {
      json[r'ruleId'] = null;
    }
    if (this.ruleName != null) {
      json[r'ruleName'] = this.ruleName;
    } else {
      json[r'ruleName'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.stateChanged != null) {
      json[r'stateChanged'] = this.stateChanged;
    } else {
      json[r'stateChanged'] = null;
    }
    if (this.unixMilli != null) {
      json[r'unixMilli'] = this.unixMilli;
    } else {
      json[r'unixMilli'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableRuleStateHistory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableRuleStateHistory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableRuleStateHistory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableRuleStateHistory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableRuleStateHistory(
        fingerprint: mapValueOfType<int>(json, r'fingerprint'),
        labels: O11yLabel.listFromJson(json[r'labels']),
        overallState: mapValueOfType<Object>(json, r'overallState'),
        overallStateChanged: mapValueOfType<bool>(json, r'overallStateChanged'),
        ruleId: mapValueOfType<String>(json, r'ruleId'),
        ruleName: mapValueOfType<String>(json, r'ruleName'),
        state: mapValueOfType<Object>(json, r'state'),
        stateChanged: mapValueOfType<bool>(json, r'stateChanged'),
        unixMilli: mapValueOfType<int>(json, r'unixMilli'),
        value: num.parse('${json[r'value']}'),
      );
    }
    return null;
  }

  static List<O11yGettableRuleStateHistory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableRuleStateHistory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableRuleStateHistory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableRuleStateHistory> mapFromJson(dynamic json) {
    final map = <String, O11yGettableRuleStateHistory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableRuleStateHistory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableRuleStateHistory-objects as value to a dart map
  static Map<String, List<O11yGettableRuleStateHistory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableRuleStateHistory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableRuleStateHistory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

