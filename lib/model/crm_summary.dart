//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CrmSummary {
  /// Returns a new [CrmSummary] instance.
  CrmSummary({
    this.companies,
    this.contacts,
    this.opportunities,
  });

  /// Companies is how many companies the org has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? companies;

  /// Contacts is how many contacts the org has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contacts;

  /// Opportunities is how many opportunities the org has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? opportunities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CrmSummary &&
    other.companies == companies &&
    other.contacts == contacts &&
    other.opportunities == opportunities;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (companies == null ? 0 : companies!.hashCode) +
    (contacts == null ? 0 : contacts!.hashCode) +
    (opportunities == null ? 0 : opportunities!.hashCode);

  @override
  String toString() => 'CrmSummary[companies=$companies, contacts=$contacts, opportunities=$opportunities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.companies != null) {
      json[r'companies'] = this.companies;
    } else {
      json[r'companies'] = null;
    }
    if (this.contacts != null) {
      json[r'contacts'] = this.contacts;
    } else {
      json[r'contacts'] = null;
    }
    if (this.opportunities != null) {
      json[r'opportunities'] = this.opportunities;
    } else {
      json[r'opportunities'] = null;
    }
    return json;
  }

  /// Returns a new [CrmSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CrmSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CrmSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CrmSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CrmSummary(
        companies: mapValueOfType<int>(json, r'companies'),
        contacts: mapValueOfType<int>(json, r'contacts'),
        opportunities: mapValueOfType<int>(json, r'opportunities'),
      );
    }
    return null;
  }

  static List<CrmSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CrmSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CrmSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CrmSummary> mapFromJson(dynamic json) {
    final map = <String, CrmSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CrmSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CrmSummary-objects as value to a dart map
  static Map<String, List<CrmSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CrmSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CrmSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

