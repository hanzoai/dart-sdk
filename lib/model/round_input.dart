//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RoundInput {
  /// Returns a new [RoundInput] instance.
  RoundInput({
    this.name,
    this.preMoneyValuation,
    this.pricePerShare,
    this.roundType,
    this.shareClassId,
    this.targetAmount,
  });
  /// Name is the round's name on the cap table, e.g. \"Seed\". Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PreMoneyValuation is the valuation the round prices off, before the new money.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? preMoneyValuation;

  /// PricePerShare is the per-share price of a priced round.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pricePerShare;

  /// RoundType is PRICED, SAFE or CONVERTIBLE_NOTE. Defaults to PRICED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roundType;

  /// ShareClassID is the cap table's share class the round issues into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassId;

  /// TargetAmount is the amount the round is raising, recorded verbatim on the canonical cap table's rounds.create contract.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? targetAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoundInput &&
    other.name == name &&
    other.preMoneyValuation == preMoneyValuation &&
    other.pricePerShare == pricePerShare &&
    other.roundType == roundType &&
    other.shareClassId == shareClassId &&
    other.targetAmount == targetAmount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (preMoneyValuation == null ? 0 : preMoneyValuation!.hashCode) +
    (pricePerShare == null ? 0 : pricePerShare!.hashCode) +
    (roundType == null ? 0 : roundType!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode) +
    (targetAmount == null ? 0 : targetAmount!.hashCode);

  @override
  String toString() => 'RoundInput[name=$name, preMoneyValuation=$preMoneyValuation, pricePerShare=$pricePerShare, roundType=$roundType, shareClassId=$shareClassId, targetAmount=$targetAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.preMoneyValuation != null) {
      json[r'preMoneyValuation'] = this.preMoneyValuation;
    } else {
      json[r'preMoneyValuation'] = null;
    }
    if (this.pricePerShare != null) {
      json[r'pricePerShare'] = this.pricePerShare;
    } else {
      json[r'pricePerShare'] = null;
    }
    if (this.roundType != null) {
      json[r'roundType'] = this.roundType;
    } else {
      json[r'roundType'] = null;
    }
    if (this.shareClassId != null) {
      json[r'shareClassId'] = this.shareClassId;
    } else {
      json[r'shareClassId'] = null;
    }
    if (this.targetAmount != null) {
      json[r'targetAmount'] = this.targetAmount;
    } else {
      json[r'targetAmount'] = null;
    }
    return json;
  }

  /// Returns a new [RoundInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoundInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoundInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoundInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoundInput(
        name: mapValueOfType<String>(json, r'name'),
        preMoneyValuation: num.parse('${json[r'preMoneyValuation']}'),
        pricePerShare: num.parse('${json[r'pricePerShare']}'),
        roundType: mapValueOfType<String>(json, r'roundType'),
        shareClassId: mapValueOfType<String>(json, r'shareClassId'),
        targetAmount: num.parse('${json[r'targetAmount']}'),
      );
    }
    return null;
  }

  static List<RoundInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoundInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoundInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoundInput> mapFromJson(dynamic json) {
    final map = <String, RoundInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoundInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoundInput-objects as value to a dart map
  static Map<String, List<RoundInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoundInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoundInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

