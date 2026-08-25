//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableEquityPlanIn {
  /// Returns a new [CaptableEquityPlanIn] instance.
  CaptableEquityPlanIn({
    this.boardApprovalDate,
    this.comments,
    this.defaultCancellatonBehavior,
    this.initialSharesReserved,
    this.name,
    this.planEffectiveDate,
    this.shareClassId,
  });
  Object? boardApprovalDate;

  Object? comments;

  Object? defaultCancellatonBehavior;

  Object? initialSharesReserved;

  Object? name;

  Object? planEffectiveDate;

  Object? shareClassId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableEquityPlanIn &&
    other.boardApprovalDate == boardApprovalDate &&
    other.comments == comments &&
    other.defaultCancellatonBehavior == defaultCancellatonBehavior &&
    other.initialSharesReserved == initialSharesReserved &&
    other.name == name &&
    other.planEffectiveDate == planEffectiveDate &&
    other.shareClassId == shareClassId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boardApprovalDate == null ? 0 : boardApprovalDate!.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (defaultCancellatonBehavior == null ? 0 : defaultCancellatonBehavior!.hashCode) +
    (initialSharesReserved == null ? 0 : initialSharesReserved!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (planEffectiveDate == null ? 0 : planEffectiveDate!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode);

  @override
  String toString() => 'CaptableEquityPlanIn[boardApprovalDate=$boardApprovalDate, comments=$comments, defaultCancellatonBehavior=$defaultCancellatonBehavior, initialSharesReserved=$initialSharesReserved, name=$name, planEffectiveDate=$planEffectiveDate, shareClassId=$shareClassId]';

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
    if (this.defaultCancellatonBehavior != null) {
      json[r'defaultCancellatonBehavior'] = this.defaultCancellatonBehavior;
    } else {
      json[r'defaultCancellatonBehavior'] = null;
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

  /// Returns a new [CaptableEquityPlanIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableEquityPlanIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableEquityPlanIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableEquityPlanIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableEquityPlanIn(
        boardApprovalDate: mapValueOfType<Object>(json, r'boardApprovalDate'),
        comments: mapValueOfType<Object>(json, r'comments'),
        defaultCancellatonBehavior: mapValueOfType<Object>(json, r'defaultCancellatonBehavior'),
        initialSharesReserved: mapValueOfType<Object>(json, r'initialSharesReserved'),
        name: mapValueOfType<Object>(json, r'name'),
        planEffectiveDate: mapValueOfType<Object>(json, r'planEffectiveDate'),
        shareClassId: mapValueOfType<Object>(json, r'shareClassId'),
      );
    }
    return null;
  }

  static List<CaptableEquityPlanIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableEquityPlanIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableEquityPlanIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableEquityPlanIn> mapFromJson(dynamic json) {
    final map = <String, CaptableEquityPlanIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableEquityPlanIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableEquityPlanIn-objects as value to a dart map
  static Map<String, List<CaptableEquityPlanIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableEquityPlanIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableEquityPlanIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

