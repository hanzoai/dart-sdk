//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableHolding {
  /// Returns a new [CaptableHolding] instance.
  CaptableHolding({
    this.fullyDiluted,
    this.name,
    this.options,
    this.ownershipPct,
    this.shares,
    this.stakeholderId,
  });
  /// FullyDiluted is shares plus options.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fullyDiluted;

  /// Name is the stakeholder's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Options is the shares under this stakeholder's non-terminal option grants.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? options;

  /// OwnershipPct is fullyDiluted as a percentage of the company's fullyDilutedShares, rounded to two decimals; 0 when nothing is issued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? ownershipPct;

  /// Shares is the shares this stakeholder holds by certificate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shares;

  /// StakeholderID addresses the stakeholder these totals are for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableHolding &&
    other.fullyDiluted == fullyDiluted &&
    other.name == name &&
    other.options == options &&
    other.ownershipPct == ownershipPct &&
    other.shares == shares &&
    other.stakeholderId == stakeholderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fullyDiluted == null ? 0 : fullyDiluted!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (options == null ? 0 : options!.hashCode) +
    (ownershipPct == null ? 0 : ownershipPct!.hashCode) +
    (shares == null ? 0 : shares!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode);

  @override
  String toString() => 'CaptableHolding[fullyDiluted=$fullyDiluted, name=$name, options=$options, ownershipPct=$ownershipPct, shares=$shares, stakeholderId=$stakeholderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fullyDiluted != null) {
      json[r'fullyDiluted'] = this.fullyDiluted;
    } else {
      json[r'fullyDiluted'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    if (this.ownershipPct != null) {
      json[r'ownershipPct'] = this.ownershipPct;
    } else {
      json[r'ownershipPct'] = null;
    }
    if (this.shares != null) {
      json[r'shares'] = this.shares;
    } else {
      json[r'shares'] = null;
    }
    if (this.stakeholderId != null) {
      json[r'stakeholderId'] = this.stakeholderId;
    } else {
      json[r'stakeholderId'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableHolding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableHolding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableHolding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableHolding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableHolding(
        fullyDiluted: mapValueOfType<int>(json, r'fullyDiluted'),
        name: mapValueOfType<String>(json, r'name'),
        options: mapValueOfType<int>(json, r'options'),
        ownershipPct: num.parse('${json[r'ownershipPct']}'),
        shares: mapValueOfType<int>(json, r'shares'),
        stakeholderId: mapValueOfType<String>(json, r'stakeholderId'),
      );
    }
    return null;
  }

  static List<CaptableHolding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableHolding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableHolding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableHolding> mapFromJson(dynamic json) {
    final map = <String, CaptableHolding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableHolding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableHolding-objects as value to a dart map
  static Map<String, List<CaptableHolding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableHolding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableHolding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

