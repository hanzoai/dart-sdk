//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CheckList {
  /// Returns a new [CheckList] instance.
  CheckList({
    this.data = const [],
    this.disclaimer,
  });

  /// Data is the org's verifications, newest first, without subject PII.
  List<CheckView> data;

  /// Disclaimer states that statuses are provider-reported, never a platform assertion of legal or regulatory compliance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disclaimer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckList &&
    _deepEquality.equals(other.data, data) &&
    other.disclaimer == disclaimer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (disclaimer == null ? 0 : disclaimer!.hashCode);

  @override
  String toString() => 'CheckList[data=$data, disclaimer=$disclaimer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.disclaimer != null) {
      json[r'disclaimer'] = this.disclaimer;
    } else {
      json[r'disclaimer'] = null;
    }
    return json;
  }

  /// Returns a new [CheckList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckList(
        data: CheckView.listFromJson(json[r'data']),
        disclaimer: mapValueOfType<String>(json, r'disclaimer'),
      );
    }
    return null;
  }

  static List<CheckList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckList> mapFromJson(dynamic json) {
    final map = <String, CheckList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckList-objects as value to a dart map
  static Map<String, List<CheckList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

