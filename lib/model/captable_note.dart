//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableNote {
  /// Returns a new [CaptableNote] instance.
  CaptableNote({
    this.capital,
    this.conversionCap,
    this.discountRate,
    this.id,
    this.interestRate,
    this.issueDate,
    this.publicId,
    this.stakeholderId,
    this.stakeholderName,
    this.status,
    this.type,
  });
  /// Capital is the principal the investor lent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? capital;

  /// ConversionCap is the valuation cap on conversion, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? conversionCap;

  /// DiscountRate is the discount to the next round's price, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? discountRate;

  /// ID is the note id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// InterestRate is the annual interest rate, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? interestRate;

  /// IssueDate is the ISO date the note was signed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issueDate;

  /// PublicID is the note's shareable identifier, unique within the company.
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

  /// Status is the note's state, e.g. DRAFT or ACTIVE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Type is the instrument kind, e.g. NOTE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableNote &&
    other.capital == capital &&
    other.conversionCap == conversionCap &&
    other.discountRate == discountRate &&
    other.id == id &&
    other.interestRate == interestRate &&
    other.issueDate == issueDate &&
    other.publicId == publicId &&
    other.stakeholderId == stakeholderId &&
    other.stakeholderName == stakeholderName &&
    other.status == status &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (capital == null ? 0 : capital!.hashCode) +
    (conversionCap == null ? 0 : conversionCap!.hashCode) +
    (discountRate == null ? 0 : discountRate!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (interestRate == null ? 0 : interestRate!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (publicId == null ? 0 : publicId!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (stakeholderName == null ? 0 : stakeholderName!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'CaptableNote[capital=$capital, conversionCap=$conversionCap, discountRate=$discountRate, id=$id, interestRate=$interestRate, issueDate=$issueDate, publicId=$publicId, stakeholderId=$stakeholderId, stakeholderName=$stakeholderName, status=$status, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.capital != null) {
      json[r'capital'] = this.capital;
    } else {
      json[r'capital'] = null;
    }
    if (this.conversionCap != null) {
      json[r'conversionCap'] = this.conversionCap;
    } else {
      json[r'conversionCap'] = null;
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
    if (this.interestRate != null) {
      json[r'interestRate'] = this.interestRate;
    } else {
      json[r'interestRate'] = null;
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
    return json;
  }

  /// Returns a new [CaptableNote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableNote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableNote[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableNote[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableNote(
        capital: num.parse('${json[r'capital']}'),
        conversionCap: num.parse('${json[r'conversionCap']}'),
        discountRate: num.parse('${json[r'discountRate']}'),
        id: mapValueOfType<String>(json, r'id'),
        interestRate: num.parse('${json[r'interestRate']}'),
        issueDate: mapValueOfType<String>(json, r'issueDate'),
        publicId: mapValueOfType<String>(json, r'publicId'),
        stakeholderId: mapValueOfType<String>(json, r'stakeholderId'),
        stakeholderName: mapValueOfType<String>(json, r'stakeholderName'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<CaptableNote> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableNote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableNote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableNote> mapFromJson(dynamic json) {
    final map = <String, CaptableNote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableNote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableNote-objects as value to a dart map
  static Map<String, List<CaptableNote>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableNote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableNote.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

