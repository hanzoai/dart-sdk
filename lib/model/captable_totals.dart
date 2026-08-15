//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableTotals {
  /// Returns a new [CaptableTotals] instance.
  CaptableTotals({
    this.fullyDilutedShares,
    this.grantedOptions,
    this.outstandingShares,
    this.shareClasses,
    this.stakeholders,
  });

  /// FullyDilutedShares is outstandingShares plus grantedOptions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fullyDilutedShares;

  /// GrantedOptions is the shares under non-terminal option grants — grants that are EXERCISED, EXPIRED or CANCELLED are excluded, so nothing double-counts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grantedOptions;

  /// OutstandingShares is the sum of every issued share certificate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? outstandingShares;

  /// ShareClasses is how many share classes the company has authorized.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shareClasses;

  /// Stakeholders is how many stakeholders the company has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stakeholders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableTotals &&
    other.fullyDilutedShares == fullyDilutedShares &&
    other.grantedOptions == grantedOptions &&
    other.outstandingShares == outstandingShares &&
    other.shareClasses == shareClasses &&
    other.stakeholders == stakeholders;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fullyDilutedShares == null ? 0 : fullyDilutedShares!.hashCode) +
    (grantedOptions == null ? 0 : grantedOptions!.hashCode) +
    (outstandingShares == null ? 0 : outstandingShares!.hashCode) +
    (shareClasses == null ? 0 : shareClasses!.hashCode) +
    (stakeholders == null ? 0 : stakeholders!.hashCode);

  @override
  String toString() => 'CaptableTotals[fullyDilutedShares=$fullyDilutedShares, grantedOptions=$grantedOptions, outstandingShares=$outstandingShares, shareClasses=$shareClasses, stakeholders=$stakeholders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fullyDilutedShares != null) {
      json[r'fullyDilutedShares'] = this.fullyDilutedShares;
    } else {
      json[r'fullyDilutedShares'] = null;
    }
    if (this.grantedOptions != null) {
      json[r'grantedOptions'] = this.grantedOptions;
    } else {
      json[r'grantedOptions'] = null;
    }
    if (this.outstandingShares != null) {
      json[r'outstandingShares'] = this.outstandingShares;
    } else {
      json[r'outstandingShares'] = null;
    }
    if (this.shareClasses != null) {
      json[r'shareClasses'] = this.shareClasses;
    } else {
      json[r'shareClasses'] = null;
    }
    if (this.stakeholders != null) {
      json[r'stakeholders'] = this.stakeholders;
    } else {
      json[r'stakeholders'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableTotals(
        fullyDilutedShares: mapValueOfType<int>(json, r'fullyDilutedShares'),
        grantedOptions: mapValueOfType<int>(json, r'grantedOptions'),
        outstandingShares: mapValueOfType<int>(json, r'outstandingShares'),
        shareClasses: mapValueOfType<int>(json, r'shareClasses'),
        stakeholders: mapValueOfType<int>(json, r'stakeholders'),
      );
    }
    return null;
  }

  static List<CaptableTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableTotals> mapFromJson(dynamic json) {
    final map = <String, CaptableTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableTotals-objects as value to a dart map
  static Map<String, List<CaptableTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

