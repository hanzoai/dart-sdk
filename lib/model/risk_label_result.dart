//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelResult {
  /// Returns a new [RiskLabelResult] instance.
  RiskLabelResult({
    this.id,
    this.refusal,
    this.status,
  });

  /// ID is the content digest of the assertion — the id a redelivery of the same fact resolves to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Refusal states what was wrong, for the refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Status is recorded, duplicate or refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelResult &&
    other.id == id &&
    other.refusal == refusal &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'RiskLabelResult[id=$id, refusal=$refusal, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [RiskLabelResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelResult(
        id: mapValueOfType<String>(json, r'id'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<RiskLabelResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelResult> mapFromJson(dynamic json) {
    final map = <String, RiskLabelResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelResult-objects as value to a dart map
  static Map<String, List<RiskLabelResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

