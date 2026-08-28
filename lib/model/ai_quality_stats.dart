//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiQualityStats {
  /// Returns a new [AiQualityStats] instance.
  AiQualityStats({
    this.avgConfidence,
    this.learnedShare,
    this.rewardRate,
    this.rewardedEvents,
    this.shadowAgreement,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgConfidence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? learnedShare;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rewardRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rewardedEvents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? shadowAgreement;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiQualityStats &&
    other.avgConfidence == avgConfidence &&
    other.learnedShare == learnedShare &&
    other.rewardRate == rewardRate &&
    other.rewardedEvents == rewardedEvents &&
    other.shadowAgreement == shadowAgreement;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgConfidence == null ? 0 : avgConfidence!.hashCode) +
    (learnedShare == null ? 0 : learnedShare!.hashCode) +
    (rewardRate == null ? 0 : rewardRate!.hashCode) +
    (rewardedEvents == null ? 0 : rewardedEvents!.hashCode) +
    (shadowAgreement == null ? 0 : shadowAgreement!.hashCode);

  @override
  String toString() => 'AiQualityStats[avgConfidence=$avgConfidence, learnedShare=$learnedShare, rewardRate=$rewardRate, rewardedEvents=$rewardedEvents, shadowAgreement=$shadowAgreement]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgConfidence != null) {
      json[r'avg_confidence'] = this.avgConfidence;
    } else {
      json[r'avg_confidence'] = null;
    }
    if (this.learnedShare != null) {
      json[r'learned_share'] = this.learnedShare;
    } else {
      json[r'learned_share'] = null;
    }
    if (this.rewardRate != null) {
      json[r'reward_rate'] = this.rewardRate;
    } else {
      json[r'reward_rate'] = null;
    }
    if (this.rewardedEvents != null) {
      json[r'rewarded_events'] = this.rewardedEvents;
    } else {
      json[r'rewarded_events'] = null;
    }
    if (this.shadowAgreement != null) {
      json[r'shadow_agreement'] = this.shadowAgreement;
    } else {
      json[r'shadow_agreement'] = null;
    }
    return json;
  }

  /// Returns a new [AiQualityStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiQualityStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiQualityStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiQualityStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiQualityStats(
        avgConfidence: num.parse('${json[r'avg_confidence']}'),
        learnedShare: num.parse('${json[r'learned_share']}'),
        rewardRate: num.parse('${json[r'reward_rate']}'),
        rewardedEvents: mapValueOfType<int>(json, r'rewarded_events'),
        shadowAgreement: num.parse('${json[r'shadow_agreement']}'),
      );
    }
    return null;
  }

  static List<AiQualityStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiQualityStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiQualityStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiQualityStats> mapFromJson(dynamic json) {
    final map = <String, AiQualityStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiQualityStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiQualityStats-objects as value to a dart map
  static Map<String, List<AiQualityStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiQualityStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiQualityStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

