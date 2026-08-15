//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RoundOut {
  /// Returns a new [RoundOut] instance.
  RoundOut({
    this.roundId,
  });

  /// RoundID is the cap table's id for the recorded round.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roundId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoundOut &&
    other.roundId == roundId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (roundId == null ? 0 : roundId!.hashCode);

  @override
  String toString() => 'RoundOut[roundId=$roundId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.roundId != null) {
      json[r'roundId'] = this.roundId;
    } else {
      json[r'roundId'] = null;
    }
    return json;
  }

  /// Returns a new [RoundOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoundOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoundOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoundOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoundOut(
        roundId: mapValueOfType<String>(json, r'roundId'),
      );
    }
    return null;
  }

  static List<RoundOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoundOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoundOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoundOut> mapFromJson(dynamic json) {
    final map = <String, RoundOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoundOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoundOut-objects as value to a dart map
  static Map<String, List<RoundOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoundOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoundOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

