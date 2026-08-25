//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableShareIn {
  /// Returns a new [CaptableShareIn] instance.
  CaptableShareIn({
    this.boardApprovalDate,
    this.capitalContribution,
    this.certificateId,
    this.cliffYears,
    this.companyLegends = const [],
    this.debtCancelled,
    this.ipContribution,
    this.issueDate,
    this.otherContributions,
    this.pricePerShare,
    this.quantity,
    this.rule144Date,
    this.shareClassId,
    this.stakeholderId,
    this.status,
    this.vestingStartDate,
    this.vestingYears,
  });
  Object? boardApprovalDate;

  Object? capitalContribution;

  Object? certificateId;

  Object? cliffYears;

  /// CompanyLegends are the restrictive legends printed on the certificate.  A LIST, and it must be sent as one: the bundle substitutes an EMPTY list for anything that is not an array, so a single string would be accepted and silently discarded — the certificate issued with no legends and nothing reporting it.
  List<Object> companyLegends;

  Object? debtCancelled;

  Object? ipContribution;

  Object? issueDate;

  Object? otherContributions;

  Object? pricePerShare;

  Object? quantity;

  Object? rule144Date;

  Object? shareClassId;

  Object? stakeholderId;

  Object? status;

  Object? vestingStartDate;

  Object? vestingYears;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableShareIn &&
    other.boardApprovalDate == boardApprovalDate &&
    other.capitalContribution == capitalContribution &&
    other.certificateId == certificateId &&
    other.cliffYears == cliffYears &&
    _deepEquality.equals(other.companyLegends, companyLegends) &&
    other.debtCancelled == debtCancelled &&
    other.ipContribution == ipContribution &&
    other.issueDate == issueDate &&
    other.otherContributions == otherContributions &&
    other.pricePerShare == pricePerShare &&
    other.quantity == quantity &&
    other.rule144Date == rule144Date &&
    other.shareClassId == shareClassId &&
    other.stakeholderId == stakeholderId &&
    other.status == status &&
    other.vestingStartDate == vestingStartDate &&
    other.vestingYears == vestingYears;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boardApprovalDate == null ? 0 : boardApprovalDate!.hashCode) +
    (capitalContribution == null ? 0 : capitalContribution!.hashCode) +
    (certificateId == null ? 0 : certificateId!.hashCode) +
    (cliffYears == null ? 0 : cliffYears!.hashCode) +
    (companyLegends.hashCode) +
    (debtCancelled == null ? 0 : debtCancelled!.hashCode) +
    (ipContribution == null ? 0 : ipContribution!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (otherContributions == null ? 0 : otherContributions!.hashCode) +
    (pricePerShare == null ? 0 : pricePerShare!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (rule144Date == null ? 0 : rule144Date!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (vestingStartDate == null ? 0 : vestingStartDate!.hashCode) +
    (vestingYears == null ? 0 : vestingYears!.hashCode);

  @override
  String toString() => 'CaptableShareIn[boardApprovalDate=$boardApprovalDate, capitalContribution=$capitalContribution, certificateId=$certificateId, cliffYears=$cliffYears, companyLegends=$companyLegends, debtCancelled=$debtCancelled, ipContribution=$ipContribution, issueDate=$issueDate, otherContributions=$otherContributions, pricePerShare=$pricePerShare, quantity=$quantity, rule144Date=$rule144Date, shareClassId=$shareClassId, stakeholderId=$stakeholderId, status=$status, vestingStartDate=$vestingStartDate, vestingYears=$vestingYears]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.boardApprovalDate != null) {
      json[r'boardApprovalDate'] = this.boardApprovalDate;
    } else {
      json[r'boardApprovalDate'] = null;
    }
    if (this.capitalContribution != null) {
      json[r'capitalContribution'] = this.capitalContribution;
    } else {
      json[r'capitalContribution'] = null;
    }
    if (this.certificateId != null) {
      json[r'certificateId'] = this.certificateId;
    } else {
      json[r'certificateId'] = null;
    }
    if (this.cliffYears != null) {
      json[r'cliffYears'] = this.cliffYears;
    } else {
      json[r'cliffYears'] = null;
    }
      json[r'companyLegends'] = this.companyLegends;
    if (this.debtCancelled != null) {
      json[r'debtCancelled'] = this.debtCancelled;
    } else {
      json[r'debtCancelled'] = null;
    }
    if (this.ipContribution != null) {
      json[r'ipContribution'] = this.ipContribution;
    } else {
      json[r'ipContribution'] = null;
    }
    if (this.issueDate != null) {
      json[r'issueDate'] = this.issueDate;
    } else {
      json[r'issueDate'] = null;
    }
    if (this.otherContributions != null) {
      json[r'otherContributions'] = this.otherContributions;
    } else {
      json[r'otherContributions'] = null;
    }
    if (this.pricePerShare != null) {
      json[r'pricePerShare'] = this.pricePerShare;
    } else {
      json[r'pricePerShare'] = null;
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
    if (this.shareClassId != null) {
      json[r'shareClassId'] = this.shareClassId;
    } else {
      json[r'shareClassId'] = null;
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

  /// Returns a new [CaptableShareIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableShareIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableShareIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableShareIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableShareIn(
        boardApprovalDate: mapValueOfType<Object>(json, r'boardApprovalDate'),
        capitalContribution: mapValueOfType<Object>(json, r'capitalContribution'),
        certificateId: mapValueOfType<Object>(json, r'certificateId'),
        cliffYears: mapValueOfType<Object>(json, r'cliffYears'),
        companyLegends: json[r'companyLegends'] is Iterable
            ? (json[r'companyLegends'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        debtCancelled: mapValueOfType<Object>(json, r'debtCancelled'),
        ipContribution: mapValueOfType<Object>(json, r'ipContribution'),
        issueDate: mapValueOfType<Object>(json, r'issueDate'),
        otherContributions: mapValueOfType<Object>(json, r'otherContributions'),
        pricePerShare: mapValueOfType<Object>(json, r'pricePerShare'),
        quantity: mapValueOfType<Object>(json, r'quantity'),
        rule144Date: mapValueOfType<Object>(json, r'rule144Date'),
        shareClassId: mapValueOfType<Object>(json, r'shareClassId'),
        stakeholderId: mapValueOfType<Object>(json, r'stakeholderId'),
        status: mapValueOfType<Object>(json, r'status'),
        vestingStartDate: mapValueOfType<Object>(json, r'vestingStartDate'),
        vestingYears: mapValueOfType<Object>(json, r'vestingYears'),
      );
    }
    return null;
  }

  static List<CaptableShareIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableShareIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableShareIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableShareIn> mapFromJson(dynamic json) {
    final map = <String, CaptableShareIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableShareIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableShareIn-objects as value to a dart map
  static Map<String, List<CaptableShareIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableShareIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableShareIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

