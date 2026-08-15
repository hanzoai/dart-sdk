//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableShare {
  /// Returns a new [CaptableShare] instance.
  CaptableShare({
    this.capitalContribution,
    this.certificateId,
    this.companyLegends = const [],
    this.id,
    this.issueDate,
    this.pricePerShare,
    this.quantity,
    this.shareClassId,
    this.shareClassName,
    this.shareClassType,
    this.stakeholderId,
    this.stakeholderName,
    this.status,
  });

  /// CapitalContribution is the cash paid for the certificate, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? capitalContribution;

  /// CertificateID is the certificate number, unique within the company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? certificateId;

  /// CompanyLegends are the restrictive legends printed on the certificate.
  List<String> companyLegends;

  /// ID is the share id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IssueDate is the ISO date the certificate was issued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issueDate;

  /// PricePerShare is the price paid per share, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pricePerShare;

  /// Quantity is how many shares the certificate covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// ShareClassID is the class the shares belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassId;

  /// ShareClassName is that class's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassName;

  /// ShareClassType is that class's type, COMMON or PREFERRED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassType;

  /// StakeholderID is the holder of the certificate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderId;

  /// StakeholderName is that holder's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderName;

  /// Status is ACTIVE or DRAFT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableShare &&
    other.capitalContribution == capitalContribution &&
    other.certificateId == certificateId &&
    _deepEquality.equals(other.companyLegends, companyLegends) &&
    other.id == id &&
    other.issueDate == issueDate &&
    other.pricePerShare == pricePerShare &&
    other.quantity == quantity &&
    other.shareClassId == shareClassId &&
    other.shareClassName == shareClassName &&
    other.shareClassType == shareClassType &&
    other.stakeholderId == stakeholderId &&
    other.stakeholderName == stakeholderName &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (capitalContribution == null ? 0 : capitalContribution!.hashCode) +
    (certificateId == null ? 0 : certificateId!.hashCode) +
    (companyLegends.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (pricePerShare == null ? 0 : pricePerShare!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode) +
    (shareClassName == null ? 0 : shareClassName!.hashCode) +
    (shareClassType == null ? 0 : shareClassType!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (stakeholderName == null ? 0 : stakeholderName!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CaptableShare[capitalContribution=$capitalContribution, certificateId=$certificateId, companyLegends=$companyLegends, id=$id, issueDate=$issueDate, pricePerShare=$pricePerShare, quantity=$quantity, shareClassId=$shareClassId, shareClassName=$shareClassName, shareClassType=$shareClassType, stakeholderId=$stakeholderId, stakeholderName=$stakeholderName, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'companyLegends'] = this.companyLegends;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.issueDate != null) {
      json[r'issueDate'] = this.issueDate;
    } else {
      json[r'issueDate'] = null;
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
    if (this.shareClassId != null) {
      json[r'shareClassId'] = this.shareClassId;
    } else {
      json[r'shareClassId'] = null;
    }
    if (this.shareClassName != null) {
      json[r'shareClassName'] = this.shareClassName;
    } else {
      json[r'shareClassName'] = null;
    }
    if (this.shareClassType != null) {
      json[r'shareClassType'] = this.shareClassType;
    } else {
      json[r'shareClassType'] = null;
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableShare] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableShare? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableShare[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableShare[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableShare(
        capitalContribution: num.parse('${json[r'capitalContribution']}'),
        certificateId: mapValueOfType<String>(json, r'certificateId'),
        companyLegends: json[r'companyLegends'] is Iterable
            ? (json[r'companyLegends'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        issueDate: mapValueOfType<String>(json, r'issueDate'),
        pricePerShare: num.parse('${json[r'pricePerShare']}'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        shareClassId: mapValueOfType<String>(json, r'shareClassId'),
        shareClassName: mapValueOfType<String>(json, r'shareClassName'),
        shareClassType: mapValueOfType<String>(json, r'shareClassType'),
        stakeholderId: mapValueOfType<String>(json, r'stakeholderId'),
        stakeholderName: mapValueOfType<String>(json, r'stakeholderName'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<CaptableShare> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableShare>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableShare.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableShare> mapFromJson(dynamic json) {
    final map = <String, CaptableShare>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableShare.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableShare-objects as value to a dart map
  static Map<String, List<CaptableShare>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableShare>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableShare.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

