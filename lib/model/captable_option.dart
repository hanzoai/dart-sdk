//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableOption {
  /// Returns a new [CaptableOption] instance.
  CaptableOption({
    this.cliffYears,
    this.equityPlanId,
    this.equityPlanName,
    this.exercisePrice,
    this.expirationDate,
    this.grantId,
    this.id,
    this.issueDate,
    this.quantity,
    this.stakeholderId,
    this.stakeholderName,
    this.status,
    this.type,
    this.vestingYears,
  });
  /// CliffYears is how many years before any of the grant vests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cliffYears;

  /// EquityPlanID is the plan the grant draws from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? equityPlanId;

  /// EquityPlanName is that plan's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? equityPlanName;

  /// ExercisePrice is the strike price per share.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? exercisePrice;

  /// ExpirationDate is the ISO date the grant expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expirationDate;

  /// GrantID is the grant number, unique within the company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grantId;

  /// ID is the option id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IssueDate is the ISO date the grant was issued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issueDate;

  /// Quantity is how many shares the grant covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// StakeholderID is the grantee.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderId;

  /// StakeholderName is that grantee's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderName;

  /// Status is the grant's state, e.g. DRAFT, ACTIVE, EXERCISED, EXPIRED or CANCELLED. Only non-terminal grants dilute the cap table.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Type is the grant kind, ISO or NSO.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// VestingYears is the total vesting period in years.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vestingYears;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableOption &&
    other.cliffYears == cliffYears &&
    other.equityPlanId == equityPlanId &&
    other.equityPlanName == equityPlanName &&
    other.exercisePrice == exercisePrice &&
    other.expirationDate == expirationDate &&
    other.grantId == grantId &&
    other.id == id &&
    other.issueDate == issueDate &&
    other.quantity == quantity &&
    other.stakeholderId == stakeholderId &&
    other.stakeholderName == stakeholderName &&
    other.status == status &&
    other.type == type &&
    other.vestingYears == vestingYears;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cliffYears == null ? 0 : cliffYears!.hashCode) +
    (equityPlanId == null ? 0 : equityPlanId!.hashCode) +
    (equityPlanName == null ? 0 : equityPlanName!.hashCode) +
    (exercisePrice == null ? 0 : exercisePrice!.hashCode) +
    (expirationDate == null ? 0 : expirationDate!.hashCode) +
    (grantId == null ? 0 : grantId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (issueDate == null ? 0 : issueDate!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode) +
    (stakeholderName == null ? 0 : stakeholderName!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (vestingYears == null ? 0 : vestingYears!.hashCode);

  @override
  String toString() => 'CaptableOption[cliffYears=$cliffYears, equityPlanId=$equityPlanId, equityPlanName=$equityPlanName, exercisePrice=$exercisePrice, expirationDate=$expirationDate, grantId=$grantId, id=$id, issueDate=$issueDate, quantity=$quantity, stakeholderId=$stakeholderId, stakeholderName=$stakeholderName, status=$status, type=$type, vestingYears=$vestingYears]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.equityPlanName != null) {
      json[r'equityPlanName'] = this.equityPlanName;
    } else {
      json[r'equityPlanName'] = null;
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
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
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
    if (this.vestingYears != null) {
      json[r'vestingYears'] = this.vestingYears;
    } else {
      json[r'vestingYears'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableOption(
        cliffYears: mapValueOfType<int>(json, r'cliffYears'),
        equityPlanId: mapValueOfType<String>(json, r'equityPlanId'),
        equityPlanName: mapValueOfType<String>(json, r'equityPlanName'),
        exercisePrice: mapValueOfType<double>(json, r'exercisePrice'),
        expirationDate: mapValueOfType<String>(json, r'expirationDate'),
        grantId: mapValueOfType<String>(json, r'grantId'),
        id: mapValueOfType<String>(json, r'id'),
        issueDate: mapValueOfType<String>(json, r'issueDate'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        stakeholderId: mapValueOfType<String>(json, r'stakeholderId'),
        stakeholderName: mapValueOfType<String>(json, r'stakeholderName'),
        status: mapValueOfType<String>(json, r'status'),
        type: mapValueOfType<String>(json, r'type'),
        vestingYears: mapValueOfType<int>(json, r'vestingYears'),
      );
    }
    return null;
  }

  static List<CaptableOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableOption> mapFromJson(dynamic json) {
    final map = <String, CaptableOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableOption-objects as value to a dart map
  static Map<String, List<CaptableOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

