//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RecordList {
  /// Returns a new [RecordList] instance.
  RecordList({
    this.accreditation = const [],
    this.disclaimer,
    this.verifications = const [],
  });
  /// Accreditation is the org's tracked accreditation-state records.
  List<AccView> accreditation;

  /// Disclaimer states that statuses are provider-reported or tracked, never a platform assertion of legal or regulatory compliance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disclaimer;

  /// Verifications is the org's KYC/KYB checks, provider-reported statuses only.
  List<CheckView> verifications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecordList &&
    _deepEquality.equals(other.accreditation, accreditation) &&
    other.disclaimer == disclaimer &&
    _deepEquality.equals(other.verifications, verifications);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accreditation.hashCode) +
    (disclaimer == null ? 0 : disclaimer!.hashCode) +
    (verifications.hashCode);

  @override
  String toString() => 'RecordList[accreditation=$accreditation, disclaimer=$disclaimer, verifications=$verifications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accreditation'] = this.accreditation;
    if (this.disclaimer != null) {
      json[r'disclaimer'] = this.disclaimer;
    } else {
      json[r'disclaimer'] = null;
    }
      json[r'verifications'] = this.verifications;
    return json;
  }

  /// Returns a new [RecordList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecordList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecordList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecordList(
        accreditation: AccView.listFromJson(json[r'accreditation']),
        disclaimer: mapValueOfType<String>(json, r'disclaimer'),
        verifications: CheckView.listFromJson(json[r'verifications']),
      );
    }
    return null;
  }

  static List<RecordList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordList> mapFromJson(dynamic json) {
    final map = <String, RecordList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordList-objects as value to a dart map
  static Map<String, List<RecordList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

