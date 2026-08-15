//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskHoldOut {
  /// Returns a new [RiskHoldOut] instance.
  RiskHoldOut({
    this.changed,
    this.held,
    this.hold,
    this.missing,
  });

  /// Changed is how many records moved into that state. A record already in it is not counted and is not an error: the op is idempotent, so a retry after a network failure is safe.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? changed;

  /// Held is how many records this tenant is now holding, at any age. Retention never disposes of one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? held;

  /// Hold echoes the state asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hold;

  /// Missing is how many of the named ids this tenant does not hold. It is reported rather than refused, so a sweep over a list that includes disposed records still places every hold it can — but it is REPORTED, because a hold that silently did nothing is a compliance control that lies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskHoldOut &&
    other.changed == changed &&
    other.held == held &&
    other.hold == hold &&
    other.missing == missing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (changed == null ? 0 : changed!.hashCode) +
    (held == null ? 0 : held!.hashCode) +
    (hold == null ? 0 : hold!.hashCode) +
    (missing == null ? 0 : missing!.hashCode);

  @override
  String toString() => 'RiskHoldOut[changed=$changed, held=$held, hold=$hold, missing=$missing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.changed != null) {
      json[r'changed'] = this.changed;
    } else {
      json[r'changed'] = null;
    }
    if (this.held != null) {
      json[r'held'] = this.held;
    } else {
      json[r'held'] = null;
    }
    if (this.hold != null) {
      json[r'hold'] = this.hold;
    } else {
      json[r'hold'] = null;
    }
    if (this.missing != null) {
      json[r'missing'] = this.missing;
    } else {
      json[r'missing'] = null;
    }
    return json;
  }

  /// Returns a new [RiskHoldOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskHoldOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskHoldOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskHoldOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskHoldOut(
        changed: mapValueOfType<int>(json, r'changed'),
        held: mapValueOfType<int>(json, r'held'),
        hold: mapValueOfType<bool>(json, r'hold'),
        missing: mapValueOfType<int>(json, r'missing'),
      );
    }
    return null;
  }

  static List<RiskHoldOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskHoldOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskHoldOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskHoldOut> mapFromJson(dynamic json) {
    final map = <String, RiskHoldOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskHoldOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskHoldOut-objects as value to a dart map
  static Map<String, List<RiskHoldOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskHoldOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskHoldOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

