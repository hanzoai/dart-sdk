//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiRoutingRewardResult {
  /// Returns a new [AiRoutingRewardResult] instance.
  AiRoutingRewardResult({
    this.recorded,
    this.requestId,
    this.reward,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? recorded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? reward;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiRoutingRewardResult &&
    other.recorded == recorded &&
    other.requestId == requestId &&
    other.reward == reward;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recorded == null ? 0 : recorded!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (reward == null ? 0 : reward!.hashCode);

  @override
  String toString() => 'AiRoutingRewardResult[recorded=$recorded, requestId=$requestId, reward=$reward]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.recorded != null) {
      json[r'recorded'] = this.recorded;
    } else {
      json[r'recorded'] = null;
    }
    if (this.requestId != null) {
      json[r'request_id'] = this.requestId;
    } else {
      json[r'request_id'] = null;
    }
    if (this.reward != null) {
      json[r'reward'] = this.reward;
    } else {
      json[r'reward'] = null;
    }
    return json;
  }

  /// Returns a new [AiRoutingRewardResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiRoutingRewardResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiRoutingRewardResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiRoutingRewardResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiRoutingRewardResult(
        recorded: mapValueOfType<bool>(json, r'recorded'),
        requestId: mapValueOfType<String>(json, r'request_id'),
        reward: num.parse('${json[r'reward']}'),
      );
    }
    return null;
  }

  static List<AiRoutingRewardResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiRoutingRewardResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiRoutingRewardResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiRoutingRewardResult> mapFromJson(dynamic json) {
    final map = <String, AiRoutingRewardResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiRoutingRewardResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiRoutingRewardResult-objects as value to a dart map
  static Map<String, List<AiRoutingRewardResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiRoutingRewardResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiRoutingRewardResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

