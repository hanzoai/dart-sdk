//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableInvestment {
  /// Returns a new [CaptableInvestment] instance.
  CaptableInvestment({
    this.amount,
    this.date,
    this.id,
    this.roundId,
    this.shareClassId,
    this.shares,
    this.stakeholderId,
    this.stakeholderName,
  });
  /// Amount is the cash invested.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  /// Date is the ISO date of the investment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  /// ID is the investment id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// RoundID is the round the cheque went into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roundId;

  /// ShareClassID is the class shares were issued in, for a priced round.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassId;

  /// Shares is how many shares the investment bought; 0 when the round issues no equity at the time of investment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shares;

  /// StakeholderID is the investor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderId;

  /// StakeholderName is that investor's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableInvestment &&
    other.amount == amount &&
    other.date == date &&
    other.id == id &&
    other.roundId == roundId &&
    other.shareClassId == shareClassId &&
    other.shares == shares &&
    other.stakeholderId == stakeholderId &&
    other.stakeholderName == stakeholderName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (roundId == null ? 0 : roundId!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode) +
    (shares == null ? 0 : shares!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (stakeholderName == null ? 0 : stakeholderName!.hashCode);

  @override
  String toString() => 'CaptableInvestment[amount=$amount, date=$date, id=$id, roundId=$roundId, shareClassId=$shareClassId, shares=$shares, stakeholderId=$stakeholderId, stakeholderName=$stakeholderName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.roundId != null) {
      json[r'roundId'] = this.roundId;
    } else {
      json[r'roundId'] = null;
    }
    if (this.shareClassId != null) {
      json[r'shareClassId'] = this.shareClassId;
    } else {
      json[r'shareClassId'] = null;
    }
    if (this.shares != null) {
      json[r'shares'] = this.shares;
    } else {
      json[r'shares'] = null;
    }
    if (this.stakeholderId != null) {
      json[r'stakeholderId'] = this.stakeholderId;
    } else {
      json[r'stakeholderId'] = null;
    }
    if (this.stakeholderName != null) {
      json[r'stakeholderName'] = this.stakeholderName;
    } else {
      json[r'stakeholderName'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableInvestment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableInvestment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableInvestment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableInvestment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableInvestment(
        amount: num.parse('${json[r'amount']}'),
        date: mapValueOfType<String>(json, r'date'),
        id: mapValueOfType<String>(json, r'id'),
        roundId: mapValueOfType<String>(json, r'roundId'),
        shareClassId: mapValueOfType<String>(json, r'shareClassId'),
        shares: mapValueOfType<int>(json, r'shares'),
        stakeholderId: mapValueOfType<String>(json, r'stakeholderId'),
        stakeholderName: mapValueOfType<String>(json, r'stakeholderName'),
      );
    }
    return null;
  }

  static List<CaptableInvestment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableInvestment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableInvestment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableInvestment> mapFromJson(dynamic json) {
    final map = <String, CaptableInvestment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableInvestment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableInvestment-objects as value to a dart map
  static Map<String, List<CaptableInvestment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableInvestment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableInvestment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

