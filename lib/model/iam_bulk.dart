//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamBulk {
  /// Returns a new [IamBulk] instance.
  IamBulk({
    this.maxOperations,
    this.maxPayloadSize,
    this.supported,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxOperations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxPayloadSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supported;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamBulk &&
    other.maxOperations == maxOperations &&
    other.maxPayloadSize == maxPayloadSize &&
    other.supported == supported;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maxOperations == null ? 0 : maxOperations!.hashCode) +
    (maxPayloadSize == null ? 0 : maxPayloadSize!.hashCode) +
    (supported == null ? 0 : supported!.hashCode);

  @override
  String toString() => 'IamBulk[maxOperations=$maxOperations, maxPayloadSize=$maxPayloadSize, supported=$supported]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maxOperations != null) {
      json[r'maxOperations'] = this.maxOperations;
    } else {
      json[r'maxOperations'] = null;
    }
    if (this.maxPayloadSize != null) {
      json[r'maxPayloadSize'] = this.maxPayloadSize;
    } else {
      json[r'maxPayloadSize'] = null;
    }
    if (this.supported != null) {
      json[r'supported'] = this.supported;
    } else {
      json[r'supported'] = null;
    }
    return json;
  }

  /// Returns a new [IamBulk] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamBulk? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamBulk[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamBulk[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamBulk(
        maxOperations: mapValueOfType<int>(json, r'maxOperations'),
        maxPayloadSize: mapValueOfType<int>(json, r'maxPayloadSize'),
        supported: mapValueOfType<bool>(json, r'supported'),
      );
    }
    return null;
  }

  static List<IamBulk> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamBulk>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamBulk.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamBulk> mapFromJson(dynamic json) {
    final map = <String, IamBulk>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamBulk.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamBulk-objects as value to a dart map
  static Map<String, List<IamBulk>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamBulk>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamBulk.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

