//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableSafe {
  /// Returns a new [CaptableSafe] instance.
  CaptableSafe({
    this.capital,
    this.discountRate,
    this.id,
    this.issueDate,
    this.mfn,
    this.proRata,
    this.publicId,
    this.stakeholderId,
    this.stakeholderName,
    this.status,
    this.type,
    this.valuationCap,
  });
  /// Capital is the cash the investor put in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? capital;

  /// DiscountRate is the discount to the next round's price, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? discountRate;

  /// ID is the SAFE id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IssueDate is the ISO date the SAFE was signed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issueDate;

  /// MFN is true when the SAFE carries a most-favoured-nation clause.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mfn;

  /// ProRata is true when the SAFE carries pro-rata rights.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? proRata;

  /// PublicID is the SAFE's shareable identifier, unique within the company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicId;

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

  /// Status is the SAFE's state, e.g. DRAFT or ACTIVE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Type is POST_MONEY or PRE_MONEY.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// ValuationCap is the valuation cap, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? valuationCap;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableSafe &&
    other.capital == capital &&
    other.discountRate == discountRate &&
    other.id == id &&
    other.issueDate == issueDate &&
    other.mfn == mfn &&
    other.proRata == proRata &&
    other.publicId == publicId &&
    other.stakeholderId == stakeholderId &&
    other.stakeholderName == stakeholderName &&
    other.status == status &&
    other.type == type &&
    other.valuationCap == valuationCap;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (capital == null ? 0 : capital!.hashCode) +
    (discountRate == null ? 0 : discountRate!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (mfn == null ? 0 : mfn!.hashCode) +
    (proRata == null ? 0 : proRata!.hashCode) +
    (publicId == null ? 0 : publicId!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (stakeholderName == null ? 0 : stakeholderName!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valuationCap == null ? 0 : valuationCap!.hashCode);

  @override
  String toString() => 'CaptableSafe[capital=$capital, discountRate=$discountRate, id=$id, issueDate=$issueDate, mfn=$mfn, proRata=$proRata, publicId=$publicId, stakeholderId=$stakeholderId, stakeholderName=$stakeholderName, status=$status, type=$type, valuationCap=$valuationCap]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.mfn != null) {
      json[r'mfn'] = this.mfn;
    } else {
      json[r'mfn'] = null;
    }
    if (this.proRata != null) {
      json[r'proRata'] = this.proRata;
    } else {
      json[r'proRata'] = null;
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

  /// Returns a new [CaptableSafe] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableSafe? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableSafe[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableSafe[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableSafe(
        capital: mapValueOfType<double>(json, r'capital'),
        discountRate: mapValueOfType<double>(json, r'discountRate'),
        id: mapValueOfType<String>(json, r'id'),
        issueDate: mapValueOfType<String>(json, r'issueDate'),
        mfn: mapValueOfType<bool>(json, r'mfn'),
        proRata: mapValueOfType<bool>(json, r'proRata'),
        publicId: mapValueOfType<String>(json, r'publicId'),
        stakeholderId: mapValueOfType<String>(json, r'stakeholderId'),
        stakeholderName: mapValueOfType<String>(json, r'stakeholderName'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
        valuationCap: mapValueOfType<double>(json, r'valuationCap'),
      );
    }
    return null;
  }

  static List<CaptableSafe> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableSafe>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableSafe.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableSafe> mapFromJson(dynamic json) {
    final map = <String, CaptableSafe>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableSafe.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableSafe-objects as value to a dart map
  static Map<String, List<CaptableSafe>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableSafe>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableSafe.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

