//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableShareClassIn {
  /// Returns a new [CaptableShareClassIn] instance.
  CaptableShareClassIn({
    this.boardApprovalDate,
    this.classType,
    this.conversionRights,
    this.convertsToShareClassId,
    this.initialSharesAuthorized,
    this.liquidationPreferenceMultiple,
    this.name,
    this.parValue,
    this.participationCapMultiple,
    this.pricePerShare,
    this.seniority,
    this.stockholderApprovalDate,
    this.votesPerShare,
  });
  Object? boardApprovalDate;

  Object? classType;

  Object? conversionRights;

  Object? convertsToShareClassId;

  Object? initialSharesAuthorized;

  Object? liquidationPreferenceMultiple;

  Object? name;

  Object? parValue;

  Object? participationCapMultiple;

  Object? pricePerShare;

  Object? seniority;

  Object? stockholderApprovalDate;

  Object? votesPerShare;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableShareClassIn &&
    other.boardApprovalDate == boardApprovalDate &&
    other.classType == classType &&
    other.conversionRights == conversionRights &&
    other.convertsToShareClassId == convertsToShareClassId &&
    other.initialSharesAuthorized == initialSharesAuthorized &&
    other.liquidationPreferenceMultiple == liquidationPreferenceMultiple &&
    other.name == name &&
    other.parValue == parValue &&
    other.participationCapMultiple == participationCapMultiple &&
    other.pricePerShare == pricePerShare &&
    other.seniority == seniority &&
    other.stockholderApprovalDate == stockholderApprovalDate &&
    other.votesPerShare == votesPerShare;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boardApprovalDate == null ? 0 : boardApprovalDate!.hashCode) +
    (classType == null ? 0 : classType!.hashCode) +
    (conversionRights == null ? 0 : conversionRights!.hashCode) +
    (convertsToShareClassId == null ? 0 : convertsToShareClassId!.hashCode) +
    (initialSharesAuthorized == null ? 0 : initialSharesAuthorized!.hashCode) +
    (liquidationPreferenceMultiple == null ? 0 : liquidationPreferenceMultiple!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parValue == null ? 0 : parValue!.hashCode) +
    (participationCapMultiple == null ? 0 : participationCapMultiple!.hashCode) +
    (pricePerShare == null ? 0 : pricePerShare!.hashCode) +
    (seniority == null ? 0 : seniority!.hashCode) +
    (stockholderApprovalDate == null ? 0 : stockholderApprovalDate!.hashCode) +
    (votesPerShare == null ? 0 : votesPerShare!.hashCode);

  @override
  String toString() => 'CaptableShareClassIn[boardApprovalDate=$boardApprovalDate, classType=$classType, conversionRights=$conversionRights, convertsToShareClassId=$convertsToShareClassId, initialSharesAuthorized=$initialSharesAuthorized, liquidationPreferenceMultiple=$liquidationPreferenceMultiple, name=$name, parValue=$parValue, participationCapMultiple=$participationCapMultiple, pricePerShare=$pricePerShare, seniority=$seniority, stockholderApprovalDate=$stockholderApprovalDate, votesPerShare=$votesPerShare]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.boardApprovalDate != null) {
      json[r'boardApprovalDate'] = this.boardApprovalDate;
    } else {
      json[r'boardApprovalDate'] = null;
    }
    if (this.classType != null) {
      json[r'classType'] = this.classType;
    } else {
      json[r'classType'] = null;
    }
    if (this.conversionRights != null) {
      json[r'conversionRights'] = this.conversionRights;
    } else {
      json[r'conversionRights'] = null;
    }
    if (this.convertsToShareClassId != null) {
      json[r'convertsToShareClassId'] = this.convertsToShareClassId;
    } else {
      json[r'convertsToShareClassId'] = null;
    }
    if (this.initialSharesAuthorized != null) {
      json[r'initialSharesAuthorized'] = this.initialSharesAuthorized;
    } else {
      json[r'initialSharesAuthorized'] = null;
    }
    if (this.liquidationPreferenceMultiple != null) {
      json[r'liquidationPreferenceMultiple'] = this.liquidationPreferenceMultiple;
    } else {
      json[r'liquidationPreferenceMultiple'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.parValue != null) {
      json[r'parValue'] = this.parValue;
    } else {
      json[r'parValue'] = null;
    }
    if (this.participationCapMultiple != null) {
      json[r'participationCapMultiple'] = this.participationCapMultiple;
    } else {
      json[r'participationCapMultiple'] = null;
    }
    if (this.pricePerShare != null) {
      json[r'pricePerShare'] = this.pricePerShare;
    } else {
      json[r'pricePerShare'] = null;
    }
    if (this.seniority != null) {
      json[r'seniority'] = this.seniority;
    } else {
      json[r'seniority'] = null;
    }
    if (this.stockholderApprovalDate != null) {
      json[r'stockholderApprovalDate'] = this.stockholderApprovalDate;
    } else {
      json[r'stockholderApprovalDate'] = null;
    }
    if (this.votesPerShare != null) {
      json[r'votesPerShare'] = this.votesPerShare;
    } else {
      json[r'votesPerShare'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableShareClassIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableShareClassIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableShareClassIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableShareClassIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableShareClassIn(
        boardApprovalDate: mapValueOfType<Object>(json, r'boardApprovalDate'),
        classType: mapValueOfType<Object>(json, r'classType'),
        conversionRights: mapValueOfType<Object>(json, r'conversionRights'),
        convertsToShareClassId: mapValueOfType<Object>(json, r'convertsToShareClassId'),
        initialSharesAuthorized: mapValueOfType<Object>(json, r'initialSharesAuthorized'),
        liquidationPreferenceMultiple: mapValueOfType<Object>(json, r'liquidationPreferenceMultiple'),
        name: mapValueOfType<Object>(json, r'name'),
        parValue: mapValueOfType<Object>(json, r'parValue'),
        participationCapMultiple: mapValueOfType<Object>(json, r'participationCapMultiple'),
        pricePerShare: mapValueOfType<Object>(json, r'pricePerShare'),
        seniority: mapValueOfType<Object>(json, r'seniority'),
        stockholderApprovalDate: mapValueOfType<Object>(json, r'stockholderApprovalDate'),
        votesPerShare: mapValueOfType<Object>(json, r'votesPerShare'),
      );
    }
    return null;
  }

  static List<CaptableShareClassIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableShareClassIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableShareClassIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableShareClassIn> mapFromJson(dynamic json) {
    final map = <String, CaptableShareClassIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableShareClassIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableShareClassIn-objects as value to a dart map
  static Map<String, List<CaptableShareClassIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableShareClassIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableShareClassIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

