//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OppReq {
  /// Returns a new [OppReq] instance.
  OppReq({
    this.amount,
    this.closeDate,
    this.companyId,
    this.currency,
    this.id,
    this.name,
    this.pointOfContactId,
    this.stage,
  });
  /// Amount is the deal value in minor units (cents) of Currency.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  /// CloseDate is the expected close, as a unix second (0 = unset).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closeDate;

  /// CompanyID links the deal to one of the org's companies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyId;

  /// Currency is the ISO code Amount is denominated in; empty defaults to USD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// ID names the opportunity to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the deal name. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PointOfContact links the deal to one of the org's contacts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pointOfContactId;

  /// Stage is the pipeline stage: NEW, SCREENING, MEETING, PROPOSAL or CUSTOMER (case-insensitive). Empty defaults to NEW.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OppReq &&
    other.amount == amount &&
    other.closeDate == closeDate &&
    other.companyId == companyId &&
    other.currency == currency &&
    other.id == id &&
    other.name == name &&
    other.pointOfContactId == pointOfContactId &&
    other.stage == stage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (closeDate == null ? 0 : closeDate!.hashCode) +
    (companyId == null ? 0 : companyId!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pointOfContactId == null ? 0 : pointOfContactId!.hashCode) +
    (stage == null ? 0 : stage!.hashCode);

  @override
  String toString() => 'OppReq[amount=$amount, closeDate=$closeDate, companyId=$companyId, currency=$currency, id=$id, name=$name, pointOfContactId=$pointOfContactId, stage=$stage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.closeDate != null) {
      json[r'closeDate'] = this.closeDate;
    } else {
      json[r'closeDate'] = null;
    }
    if (this.companyId != null) {
      json[r'companyId'] = this.companyId;
    } else {
      json[r'companyId'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
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
    if (this.pointOfContactId != null) {
      json[r'pointOfContactId'] = this.pointOfContactId;
    } else {
      json[r'pointOfContactId'] = null;
    }
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
    return json;
  }

  /// Returns a new [OppReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OppReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OppReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OppReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OppReq(
        amount: mapValueOfType<int>(json, r'amount'),
        closeDate: mapValueOfType<int>(json, r'closeDate'),
        companyId: mapValueOfType<String>(json, r'companyId'),
        currency: mapValueOfType<String>(json, r'currency'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        pointOfContactId: mapValueOfType<String>(json, r'pointOfContactId'),
        stage: mapValueOfType<String>(json, r'stage'),
      );
    }
    return null;
  }

  static List<OppReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OppReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OppReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OppReq> mapFromJson(dynamic json) {
    final map = <String, OppReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OppReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OppReq-objects as value to a dart map
  static Map<String, List<OppReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OppReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OppReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

