//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableSafeIn {
  /// Returns a new [CaptableSafeIn] instance.
  CaptableSafeIn({
    this.additionalTerms,
    this.boardApprovalDate,
    this.capital,
    this.discountRate,
    this.issueDate,
    this.publicId,
    this.stakeholderId,
    this.status,
    this.type,
    this.valuationCap,
  });
  Object? additionalTerms;

  Object? boardApprovalDate;

  Object? capital;

  Object? discountRate;

  Object? issueDate;

  Object? publicId;

  Object? stakeholderId;

  Object? status;

  Object? type;

  Object? valuationCap;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableSafeIn &&
    other.additionalTerms == additionalTerms &&
    other.boardApprovalDate == boardApprovalDate &&
    other.capital == capital &&
    other.discountRate == discountRate &&
    other.issueDate == issueDate &&
    other.publicId == publicId &&
    other.stakeholderId == stakeholderId &&
    other.status == status &&
    other.type == type &&
    other.valuationCap == valuationCap;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (additionalTerms == null ? 0 : additionalTerms!.hashCode) +
    (boardApprovalDate == null ? 0 : boardApprovalDate!.hashCode) +
    (capital == null ? 0 : capital!.hashCode) +
    (discountRate == null ? 0 : discountRate!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (publicId == null ? 0 : publicId!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valuationCap == null ? 0 : valuationCap!.hashCode);

  @override
  String toString() => 'CaptableSafeIn[additionalTerms=$additionalTerms, boardApprovalDate=$boardApprovalDate, capital=$capital, discountRate=$discountRate, issueDate=$issueDate, publicId=$publicId, stakeholderId=$stakeholderId, status=$status, type=$type, valuationCap=$valuationCap]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.additionalTerms != null) {
      json[r'additionalTerms'] = this.additionalTerms;
    } else {
      json[r'additionalTerms'] = null;
    }
    if (this.boardApprovalDate != null) {
      json[r'boardApprovalDate'] = this.boardApprovalDate;
    } else {
      json[r'boardApprovalDate'] = null;
    }
    if (this.capital != null) {
      json[r'capital'] = this.capital;
    } else {
      json[r'capital'] = null;
    }
    if (this.discountRate != null) {
      json[r'discountRate'] = this.discountRate;
    } else {
      json[r'discountRate'] = null;
    }
    if (this.issueDate != null) {
      json[r'issueDate'] = this.issueDate;
    } else {
      json[r'issueDate'] = null;
    }
    if (this.publicId != null) {
      json[r'publicId'] = this.publicId;
    } else {
      json[r'publicId'] = null;
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
    if (this.valuationCap != null) {
      json[r'valuationCap'] = this.valuationCap;
    } else {
      json[r'valuationCap'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableSafeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableSafeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableSafeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableSafeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableSafeIn(
        additionalTerms: mapValueOfType<Object>(json, r'additionalTerms'),
        boardApprovalDate: mapValueOfType<Object>(json, r'boardApprovalDate'),
        capital: mapValueOfType<Object>(json, r'capital'),
        discountRate: mapValueOfType<Object>(json, r'discountRate'),
        issueDate: mapValueOfType<Object>(json, r'issueDate'),
        publicId: mapValueOfType<Object>(json, r'publicId'),
        stakeholderId: mapValueOfType<Object>(json, r'stakeholderId'),
        status: mapValueOfType<Object>(json, r'status'),
        type: mapValueOfType<Object>(json, r'type'),
        valuationCap: mapValueOfType<Object>(json, r'valuationCap'),
      );
    }
    return null;
  }

  static List<CaptableSafeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableSafeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableSafeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableSafeIn> mapFromJson(dynamic json) {
    final map = <String, CaptableSafeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableSafeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableSafeIn-objects as value to a dart map
  static Map<String, List<CaptableSafeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableSafeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableSafeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

