//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableEquityPlan {
  /// Returns a new [CaptableEquityPlan] instance.
  CaptableEquityPlan({
    this.boardApprovalDate,
    this.comments,
    this.createdAt,
    this.defaultCancellatonBehavior,
    this.id,
    this.initialSharesReserved,
    this.name,
    this.planEffectiveDate,
    this.shareClassId,
  });

  /// BoardApprovalDate is the ISO date the board approved the plan.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? boardApprovalDate;

  /// Comments is free-form notes on the plan.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comments;

  /// CreatedAt is when the plan was recorded, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DefaultCancellatonBehavior is what happens to cancelled grants, RETIRE or RETURN_TO_POOL. The key is spelled as the cap-table wire spells it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultCancellatonBehavior;

  /// ID is the equity plan id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// InitialSharesReserved is how many shares the plan reserves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? initialSharesReserved;

  /// Name is the plan name, e.g. \"2026 Stock Option Plan\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// PlanEffectiveDate is the ISO date the plan takes effect.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? planEffectiveDate;

  /// ShareClassID is the class the reserved shares come from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableEquityPlan &&
    other.boardApprovalDate == boardApprovalDate &&
    other.comments == comments &&
    other.createdAt == createdAt &&
    other.defaultCancellatonBehavior == defaultCancellatonBehavior &&
    other.id == id &&
    other.initialSharesReserved == initialSharesReserved &&
    other.name == name &&
    other.planEffectiveDate == planEffectiveDate &&
    other.shareClassId == shareClassId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boardApprovalDate == null ? 0 : boardApprovalDate!.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (defaultCancellatonBehavior == null ? 0 : defaultCancellatonBehavior!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (initialSharesReserved == null ? 0 : initialSharesReserved!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (planEffectiveDate == null ? 0 : planEffectiveDate!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode);

  @override
  String toString() => 'CaptableEquityPlan[boardApprovalDate=$boardApprovalDate, comments=$comments, createdAt=$createdAt, defaultCancellatonBehavior=$defaultCancellatonBehavior, id=$id, initialSharesReserved=$initialSharesReserved, name=$name, planEffectiveDate=$planEffectiveDate, shareClassId=$shareClassId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.boardApprovalDate != null) {
      json[r'boardApprovalDate'] = this.boardApprovalDate;
    } else {
      json[r'boardApprovalDate'] = null;
    }
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.defaultCancellatonBehavior != null) {
      json[r'defaultCancellatonBehavior'] = this.defaultCancellatonBehavior;
    } else {
      json[r'defaultCancellatonBehavior'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.initialSharesReserved != null) {
      json[r'initialSharesReserved'] = this.initialSharesReserved;
    } else {
      json[r'initialSharesReserved'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.planEffectiveDate != null) {
      json[r'planEffectiveDate'] = this.planEffectiveDate;
    } else {
      json[r'planEffectiveDate'] = null;
    }
    if (this.shareClassId != null) {
      json[r'shareClassId'] = this.shareClassId;
    } else {
      json[r'shareClassId'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableEquityPlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableEquityPlan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableEquityPlan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableEquityPlan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableEquityPlan(
        boardApprovalDate: mapValueOfType<String>(json, r'boardApprovalDate'),
        comments: mapValueOfType<String>(json, r'comments'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        defaultCancellatonBehavior: mapValueOfType<String>(json, r'defaultCancellatonBehavior'),
        id: mapValueOfType<String>(json, r'id'),
        initialSharesReserved: mapValueOfType<int>(json, r'initialSharesReserved'),
        name: mapValueOfType<String>(json, r'name'),
        planEffectiveDate: mapValueOfType<String>(json, r'planEffectiveDate'),
        shareClassId: mapValueOfType<String>(json, r'shareClassId'),
      );
    }
    return null;
  }

  static List<CaptableEquityPlan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableEquityPlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableEquityPlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableEquityPlan> mapFromJson(dynamic json) {
    final map = <String, CaptableEquityPlan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableEquityPlan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableEquityPlan-objects as value to a dart map
  static Map<String, List<CaptableEquityPlan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableEquityPlan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableEquityPlan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

