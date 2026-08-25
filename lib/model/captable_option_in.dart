//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableOptionIn {
  /// Returns a new [CaptableOptionIn] instance.
  CaptableOptionIn({
    this.boardApprovalDate,
    this.cliffYears,
    this.equityPlanId,
    this.exercisePrice,
    this.expirationDate,
    this.grantId,
    this.issueDate,
    this.notes,
    this.quantity,
    this.rule144Date,
    this.stakeholderId,
    this.status,
    this.type,
    this.vestingStartDate,
    this.vestingYears,
  });
  Object? boardApprovalDate;

  Object? cliffYears;

  Object? equityPlanId;

  Object? exercisePrice;

  Object? expirationDate;

  Object? grantId;

  Object? issueDate;

  Object? notes;

  Object? quantity;

  Object? rule144Date;

  Object? stakeholderId;

  Object? status;

  Object? type;

  Object? vestingStartDate;

  Object? vestingYears;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableOptionIn &&
    other.boardApprovalDate == boardApprovalDate &&
    other.cliffYears == cliffYears &&
    other.equityPlanId == equityPlanId &&
    other.exercisePrice == exercisePrice &&
    other.expirationDate == expirationDate &&
    other.grantId == grantId &&
    other.issueDate == issueDate &&
    other.notes == notes &&
    other.quantity == quantity &&
    other.rule144Date == rule144Date &&
    other.stakeholderId == stakeholderId &&
    other.status == status &&
    other.type == type &&
    other.vestingStartDate == vestingStartDate &&
    other.vestingYears == vestingYears;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boardApprovalDate == null ? 0 : boardApprovalDate!.hashCode) +
    (cliffYears == null ? 0 : cliffYears!.hashCode) +
    (equityPlanId == null ? 0 : equityPlanId!.hashCode) +
    (exercisePrice == null ? 0 : exercisePrice!.hashCode) +
    (expirationDate == null ? 0 : expirationDate!.hashCode) +
    (grantId == null ? 0 : grantId!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (rule144Date == null ? 0 : rule144Date!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (vestingStartDate == null ? 0 : vestingStartDate!.hashCode) +
    (vestingYears == null ? 0 : vestingYears!.hashCode);

  @override
  String toString() => 'CaptableOptionIn[boardApprovalDate=$boardApprovalDate, cliffYears=$cliffYears, equityPlanId=$equityPlanId, exercisePrice=$exercisePrice, expirationDate=$expirationDate, grantId=$grantId, issueDate=$issueDate, notes=$notes, quantity=$quantity, rule144Date=$rule144Date, stakeholderId=$stakeholderId, status=$status, type=$type, vestingStartDate=$vestingStartDate, vestingYears=$vestingYears]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.boardApprovalDate != null) {
      json[r'boardApprovalDate'] = this.boardApprovalDate;
    } else {
      json[r'boardApprovalDate'] = null;
    }
    if (this.cliffYears != null) {
      json[r'cliffYears'] = this.cliffYears;
    } else {
      json[r'cliffYears'] = null;
    }
    if (this.equityPlanId != null) {
      json[r'equityPlanId'] = this.equityPlanId;
    } else {
      json[r'equityPlanId'] = null;
    }
    if (this.exercisePrice != null) {
      json[r'exercisePrice'] = this.exercisePrice;
    } else {
      json[r'exercisePrice'] = null;
    }
    if (this.expirationDate != null) {
      json[r'expirationDate'] = this.expirationDate;
    } else {
      json[r'expirationDate'] = null;
    }
    if (this.grantId != null) {
      json[r'grantId'] = this.grantId;
    } else {
      json[r'grantId'] = null;
    }
    if (this.issueDate != null) {
      json[r'issueDate'] = this.issueDate;
    } else {
      json[r'issueDate'] = null;
    }
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.rule144Date != null) {
      json[r'rule144Date'] = this.rule144Date;
    } else {
      json[r'rule144Date'] = null;
    }
    if (this.stakeholderId != null) {
      json[r'stakeholderId'] = this.stakeholderId;
    } else {
      json[r'stakeholderId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.vestingStartDate != null) {
      json[r'vestingStartDate'] = this.vestingStartDate;
    } else {
      json[r'vestingStartDate'] = null;
    }
    if (this.vestingYears != null) {
      json[r'vestingYears'] = this.vestingYears;
    } else {
      json[r'vestingYears'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableOptionIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableOptionIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableOptionIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableOptionIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableOptionIn(
        boardApprovalDate: mapValueOfType<Object>(json, r'boardApprovalDate'),
        cliffYears: mapValueOfType<Object>(json, r'cliffYears'),
        equityPlanId: mapValueOfType<Object>(json, r'equityPlanId'),
        exercisePrice: mapValueOfType<Object>(json, r'exercisePrice'),
        expirationDate: mapValueOfType<Object>(json, r'expirationDate'),
        grantId: mapValueOfType<Object>(json, r'grantId'),
        issueDate: mapValueOfType<Object>(json, r'issueDate'),
        notes: mapValueOfType<Object>(json, r'notes'),
        quantity: mapValueOfType<Object>(json, r'quantity'),
        rule144Date: mapValueOfType<Object>(json, r'rule144Date'),
        stakeholderId: mapValueOfType<Object>(json, r'stakeholderId'),
        status: mapValueOfType<Object>(json, r'status'),
        type: mapValueOfType<Object>(json, r'type'),
        vestingStartDate: mapValueOfType<Object>(json, r'vestingStartDate'),
        vestingYears: mapValueOfType<Object>(json, r'vestingYears'),
      );
    }
    return null;
  }

  static List<CaptableOptionIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableOptionIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableOptionIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableOptionIn> mapFromJson(dynamic json) {
    final map = <String, CaptableOptionIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableOptionIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableOptionIn-objects as value to a dart map
  static Map<String, List<CaptableOptionIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableOptionIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableOptionIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

