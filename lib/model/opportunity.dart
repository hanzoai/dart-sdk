//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Opportunity {
  /// Returns a new [Opportunity] instance.
  Opportunity({
    this.amount,
    this.closeDate,
    this.companyId,
    this.createdAt,
    this.currency,
    this.id,
    this.name,
    this.pointOfContactId,
    this.stage,
    this.updatedAt,
  });
  /// Amount is the deal value in minor units (cents) of Currency.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  /// CloseDate is the expected close as a unix second (0 = unset).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closeDate;

  /// CompanyID links the deal to one of the org's companies; empty when unlinked, and cleared when that company is deleted. A write naming a company the org does not own is refused with 422.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyId;

  /// CreatedAt is the unix second the opportunity was created. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Currency is the ISO code Amount is denominated in; a write that names none stores USD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// ID is the server-minted opportunity id (\"oppo_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the deal name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PointOfContact links the deal to one of the org's contacts; empty when unlinked, and cleared when that contact is deleted. A write naming a contact the org does not own is refused with 422.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pointOfContactId;

  /// Stage is the pipeline stage, always one of NEW, SCREENING, MEETING, PROPOSAL or CUSTOMER — stored upper-case whatever case the write used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  /// UpdatedAt is the unix second of the last write. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Opportunity &&
    other.amount == amount &&
    other.closeDate == closeDate &&
    other.companyId == companyId &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.id == id &&
    other.name == name &&
    other.pointOfContactId == pointOfContactId &&
    other.stage == stage &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (closeDate == null ? 0 : closeDate!.hashCode) +
    (companyId == null ? 0 : companyId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pointOfContactId == null ? 0 : pointOfContactId!.hashCode) +
    (stage == null ? 0 : stage!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Opportunity[amount=$amount, closeDate=$closeDate, companyId=$companyId, createdAt=$createdAt, currency=$currency, id=$id, name=$name, pointOfContactId=$pointOfContactId, stage=$stage, updatedAt=$updatedAt]';

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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Opportunity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Opportunity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Opportunity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Opportunity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Opportunity(
        amount: mapValueOfType<int>(json, r'amount'),
        closeDate: mapValueOfType<int>(json, r'closeDate'),
        companyId: mapValueOfType<String>(json, r'companyId'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        pointOfContactId: mapValueOfType<String>(json, r'pointOfContactId'),
        stage: mapValueOfType<String>(json, r'stage'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<Opportunity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Opportunity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Opportunity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Opportunity> mapFromJson(dynamic json) {
    final map = <String, Opportunity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Opportunity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Opportunity-objects as value to a dart map
  static Map<String, List<Opportunity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Opportunity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Opportunity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

