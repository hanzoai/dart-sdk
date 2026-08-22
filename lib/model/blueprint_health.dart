//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BlueprintHealth {
  /// Returns a new [BlueprintHealth] instance.
  BlueprintHealth({
    this.blueprints,
    this.rateCard,
    this.service,
    this.status,
  });
  /// Blueprints is how many blueprints this build has embedded and priced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blueprints;

  /// RateCard is the rate card actually in force after the operator env overlay (CLOUD_BLUEPRINT_UCPU_HR / CLOUD_BLUEPRINT_UGB_HR), not the shipped default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RateCard? rateCard;

  /// Service names the subsystem answering — always \"blueprint\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is \"ok\"; the route answers 200 whenever the subsystem is mounted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlueprintHealth &&
    other.blueprints == blueprints &&
    other.rateCard == rateCard &&
    other.service == service &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blueprints == null ? 0 : blueprints!.hashCode) +
    (rateCard == null ? 0 : rateCard!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BlueprintHealth[blueprints=$blueprints, rateCard=$rateCard, service=$service, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blueprints != null) {
      json[r'blueprints'] = this.blueprints;
    } else {
      json[r'blueprints'] = null;
    }
    if (this.rateCard != null) {
      json[r'rateCard'] = this.rateCard;
    } else {
      json[r'rateCard'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [BlueprintHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlueprintHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlueprintHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlueprintHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlueprintHealth(
        blueprints: mapValueOfType<int>(json, r'blueprints'),
        rateCard: RateCard.fromJson(json[r'rateCard']),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<BlueprintHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlueprintHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlueprintHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlueprintHealth> mapFromJson(dynamic json) {
    final map = <String, BlueprintHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlueprintHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlueprintHealth-objects as value to a dart map
  static Map<String, List<BlueprintHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlueprintHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlueprintHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

