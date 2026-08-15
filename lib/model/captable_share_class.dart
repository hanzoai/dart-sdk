//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableShareClass {
  /// Returns a new [CaptableShareClass] instance.
  CaptableShareClass({
    this.classType,
    this.companyName,
    this.conversionRights,
    this.id,
    this.idx,
    this.initialSharesAuthorized,
    this.liquidationPreferenceMultiple,
    this.name,
    this.parValue,
    this.participationCapMultiple,
    this.prefix,
    this.pricePerShare,
    this.seniority,
    this.votesPerShare,
  });

  /// ClassType is COMMON or PREFERRED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? classType;

  /// CompanyName is the name of the company whose cap table this is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  /// ConversionRights describes what the class converts into, e.g. CONVERTS_TO_FUTURE_ROUND.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conversionRights;

  /// ID is the share class id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Idx is the class's 1-based position within the company, in creation order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idx;

  /// InitialSharesAuthorized is how many shares of this class are authorized.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? initialSharesAuthorized;

  /// LiquidationPreferenceMultiple is the preference multiple on liquidation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? liquidationPreferenceMultiple;

  /// Name is the class name, e.g. \"Common\" or \"Series A Preferred\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ParValue is the par value per share.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? parValue;

  /// ParticipationCapMultiple caps participation on liquidation; 0 is uncapped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? participationCapMultiple;

  /// Prefix is the certificate prefix, CS for common and PS for preferred.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefix;

  /// PricePerShare is the issue price per share.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pricePerShare;

  /// Seniority orders classes in a liquidation waterfall; higher is more senior.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seniority;

  /// VotesPerShare is how many votes one share of this class carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? votesPerShare;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableShareClass &&
    other.classType == classType &&
    other.companyName == companyName &&
    other.conversionRights == conversionRights &&
    other.id == id &&
    other.idx == idx &&
    other.initialSharesAuthorized == initialSharesAuthorized &&
    other.liquidationPreferenceMultiple == liquidationPreferenceMultiple &&
    other.name == name &&
    other.parValue == parValue &&
    other.participationCapMultiple == participationCapMultiple &&
    other.prefix == prefix &&
    other.pricePerShare == pricePerShare &&
    other.seniority == seniority &&
    other.votesPerShare == votesPerShare;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classType == null ? 0 : classType!.hashCode) +
    (companyName == null ? 0 : companyName!.hashCode) +
    (conversionRights == null ? 0 : conversionRights!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idx == null ? 0 : idx!.hashCode) +
    (initialSharesAuthorized == null ? 0 : initialSharesAuthorized!.hashCode) +
    (liquidationPreferenceMultiple == null ? 0 : liquidationPreferenceMultiple!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parValue == null ? 0 : parValue!.hashCode) +
    (participationCapMultiple == null ? 0 : participationCapMultiple!.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode) +
    (pricePerShare == null ? 0 : pricePerShare!.hashCode) +
    (seniority == null ? 0 : seniority!.hashCode) +
    (votesPerShare == null ? 0 : votesPerShare!.hashCode);

  @override
  String toString() => 'CaptableShareClass[classType=$classType, companyName=$companyName, conversionRights=$conversionRights, id=$id, idx=$idx, initialSharesAuthorized=$initialSharesAuthorized, liquidationPreferenceMultiple=$liquidationPreferenceMultiple, name=$name, parValue=$parValue, participationCapMultiple=$participationCapMultiple, prefix=$prefix, pricePerShare=$pricePerShare, seniority=$seniority, votesPerShare=$votesPerShare]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.classType != null) {
      json[r'classType'] = this.classType;
    } else {
      json[r'classType'] = null;
    }
    if (this.companyName != null) {
      json[r'companyName'] = this.companyName;
    } else {
      json[r'companyName'] = null;
    }
    if (this.conversionRights != null) {
      json[r'conversionRights'] = this.conversionRights;
    } else {
      json[r'conversionRights'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idx != null) {
      json[r'idx'] = this.idx;
    } else {
      json[r'idx'] = null;
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
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
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
    if (this.votesPerShare != null) {
      json[r'votesPerShare'] = this.votesPerShare;
    } else {
      json[r'votesPerShare'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableShareClass] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableShareClass? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableShareClass[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableShareClass[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableShareClass(
        classType: mapValueOfType<String>(json, r'classType'),
        companyName: mapValueOfType<String>(json, r'companyName'),
        conversionRights: mapValueOfType<String>(json, r'conversionRights'),
        id: mapValueOfType<String>(json, r'id'),
        idx: mapValueOfType<int>(json, r'idx'),
        initialSharesAuthorized: mapValueOfType<int>(json, r'initialSharesAuthorized'),
        liquidationPreferenceMultiple: num.parse('${json[r'liquidationPreferenceMultiple']}'),
        name: mapValueOfType<String>(json, r'name'),
        parValue: num.parse('${json[r'parValue']}'),
        participationCapMultiple: num.parse('${json[r'participationCapMultiple']}'),
        prefix: mapValueOfType<String>(json, r'prefix'),
        pricePerShare: num.parse('${json[r'pricePerShare']}'),
        seniority: mapValueOfType<int>(json, r'seniority'),
        votesPerShare: mapValueOfType<int>(json, r'votesPerShare'),
      );
    }
    return null;
  }

  static List<CaptableShareClass> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableShareClass>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableShareClass.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableShareClass> mapFromJson(dynamic json) {
    final map = <String, CaptableShareClass>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableShareClass.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableShareClass-objects as value to a dart map
  static Map<String, List<CaptableShareClass>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableShareClass>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableShareClass.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

