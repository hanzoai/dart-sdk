//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableRoundIn {
  /// Returns a new [CaptableRoundIn] instance.
  CaptableRoundIn({
    this.name,
    this.preMoneyValuation,
    this.pricePerShare,
    this.roundType,
    this.shareClassId,
    this.targetAmount,
  });
  Object? name;

  Object? preMoneyValuation;

  Object? pricePerShare;

  Object? roundType;

  Object? shareClassId;

  Object? targetAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableRoundIn &&
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
  String toString() => 'CaptableRoundIn[name=$name, preMoneyValuation=$preMoneyValuation, pricePerShare=$pricePerShare, roundType=$roundType, shareClassId=$shareClassId, targetAmount=$targetAmount]';

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

  /// Returns a new [CaptableRoundIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableRoundIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableRoundIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableRoundIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableRoundIn(
        name: mapValueOfType<Object>(json, r'name'),
        preMoneyValuation: mapValueOfType<Object>(json, r'preMoneyValuation'),
        pricePerShare: mapValueOfType<Object>(json, r'pricePerShare'),
        roundType: mapValueOfType<Object>(json, r'roundType'),
        shareClassId: mapValueOfType<Object>(json, r'shareClassId'),
        targetAmount: mapValueOfType<Object>(json, r'targetAmount'),
      );
    }
    return null;
  }

  static List<CaptableRoundIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableRoundIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableRoundIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableRoundIn> mapFromJson(dynamic json) {
    final map = <String, CaptableRoundIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableRoundIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableRoundIn-objects as value to a dart map
  static Map<String, List<CaptableRoundIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableRoundIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableRoundIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

