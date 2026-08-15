//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableRound {
  /// Returns a new [CaptableRound] instance.
  CaptableRound({
    this.closeDate,
    this.createdAt,
    this.id,
    this.name,
    this.preMoneyValuation,
    this.pricePerShare,
    this.raisedAmount,
    this.roundType,
    this.shareClassId,
    this.status,
    this.targetAmount,
  });

  /// CloseDate is the ISO date the round closed, once it has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? closeDate;

  /// CreatedAt is when the round was recorded, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the round id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the round name, e.g. \"Series A\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PreMoneyValuation is the pre-money valuation, for a priced round.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? preMoneyValuation;

  /// PricePerShare is the price per share, for a priced round.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pricePerShare;

  /// RaisedAmount is how much has been invested so far.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? raisedAmount;

  /// RoundType is PRICED, SAFE or CONVERTIBLE_NOTE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roundType;

  /// ShareClassID is the class a priced round issues into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassId;

  /// Status is OPEN or CLOSED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TargetAmount is how much the round set out to raise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? targetAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableRound &&
    other.closeDate == closeDate &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.name == name &&
    other.preMoneyValuation == preMoneyValuation &&
    other.pricePerShare == pricePerShare &&
    other.raisedAmount == raisedAmount &&
    other.roundType == roundType &&
    other.shareClassId == shareClassId &&
    other.status == status &&
    other.targetAmount == targetAmount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (closeDate == null ? 0 : closeDate!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (preMoneyValuation == null ? 0 : preMoneyValuation!.hashCode) +
    (pricePerShare == null ? 0 : pricePerShare!.hashCode) +
    (raisedAmount == null ? 0 : raisedAmount!.hashCode) +
    (roundType == null ? 0 : roundType!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (targetAmount == null ? 0 : targetAmount!.hashCode);

  @override
  String toString() => 'CaptableRound[closeDate=$closeDate, createdAt=$createdAt, id=$id, name=$name, preMoneyValuation=$preMoneyValuation, pricePerShare=$pricePerShare, raisedAmount=$raisedAmount, roundType=$roundType, shareClassId=$shareClassId, status=$status, targetAmount=$targetAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.closeDate != null) {
      json[r'closeDate'] = this.closeDate;
    } else {
      json[r'closeDate'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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
    if (this.raisedAmount != null) {
      json[r'raisedAmount'] = this.raisedAmount;
    } else {
      json[r'raisedAmount'] = null;
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.targetAmount != null) {
      json[r'targetAmount'] = this.targetAmount;
    } else {
      json[r'targetAmount'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableRound] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableRound? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableRound[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableRound[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableRound(
        closeDate: mapValueOfType<String>(json, r'closeDate'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        preMoneyValuation: num.parse('${json[r'preMoneyValuation']}'),
        pricePerShare: num.parse('${json[r'pricePerShare']}'),
        raisedAmount: num.parse('${json[r'raisedAmount']}'),
        roundType: mapValueOfType<String>(json, r'roundType'),
        shareClassId: mapValueOfType<String>(json, r'shareClassId'),
        status: mapValueOfType<String>(json, r'status'),
        targetAmount: num.parse('${json[r'targetAmount']}'),
      );
    }
    return null;
  }

  static List<CaptableRound> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableRound>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableRound.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableRound> mapFromJson(dynamic json) {
    final map = <String, CaptableRound>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableRound.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableRound-objects as value to a dart map
  static Map<String, List<CaptableRound>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableRound>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableRound.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

