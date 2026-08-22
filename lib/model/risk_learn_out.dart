//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLearnOut {
  /// Returns a new [RiskLearnOut] instance.
  RiskLearnOut({
    this.learned,
  });
  /// Learned is how many of the events the model actually learned from, and is also what the call is metered at: one screen per event learned from. It is the batch minus the events already in this organisation's record, so a retried batch reports — and is charged — zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? learned;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLearnOut &&
    other.learned == learned;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (learned == null ? 0 : learned!.hashCode);

  @override
  String toString() => 'RiskLearnOut[learned=$learned]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.learned != null) {
      json[r'learned'] = this.learned;
    } else {
      json[r'learned'] = null;
    }
    return json;
  }

  /// Returns a new [RiskLearnOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLearnOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLearnOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLearnOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLearnOut(
        learned: mapValueOfType<int>(json, r'learned'),
      );
    }
    return null;
  }

  static List<RiskLearnOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLearnOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLearnOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLearnOut> mapFromJson(dynamic json) {
    final map = <String, RiskLearnOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLearnOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLearnOut-objects as value to a dart map
  static Map<String, List<RiskLearnOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLearnOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLearnOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

