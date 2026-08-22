//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableClassHolding {
  /// Returns a new [CaptableClassHolding] instance.
  CaptableClassHolding({
    this.authorized,
    this.classType,
    this.issued,
    this.name,
    this.shareClassId,
  });
  /// Authorized is how many shares of the class are authorized.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? authorized;

  /// ClassType is COMMON or PREFERRED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? classType;

  /// Issued is how many shares of the class have been issued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? issued;

  /// Name is the class name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ShareClassID is the share class.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareClassId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableClassHolding &&
    other.authorized == authorized &&
    other.classType == classType &&
    other.issued == issued &&
    other.name == name &&
    other.shareClassId == shareClassId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorized == null ? 0 : authorized!.hashCode) +
    (classType == null ? 0 : classType!.hashCode) +
    (issued == null ? 0 : issued!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (shareClassId == null ? 0 : shareClassId!.hashCode);

  @override
  String toString() => 'CaptableClassHolding[authorized=$authorized, classType=$classType, issued=$issued, name=$name, shareClassId=$shareClassId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorized != null) {
      json[r'authorized'] = this.authorized;
    } else {
      json[r'authorized'] = null;
    }
    if (this.classType != null) {
      json[r'classType'] = this.classType;
    } else {
      json[r'classType'] = null;
    }
    if (this.issued != null) {
      json[r'issued'] = this.issued;
    } else {
      json[r'issued'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.shareClassId != null) {
      json[r'shareClassId'] = this.shareClassId;
    } else {
      json[r'shareClassId'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableClassHolding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableClassHolding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableClassHolding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableClassHolding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableClassHolding(
        authorized: mapValueOfType<int>(json, r'authorized'),
        classType: mapValueOfType<String>(json, r'classType'),
        issued: mapValueOfType<int>(json, r'issued'),
        name: mapValueOfType<String>(json, r'name'),
        shareClassId: mapValueOfType<String>(json, r'shareClassId'),
      );
    }
    return null;
  }

  static List<CaptableClassHolding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableClassHolding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableClassHolding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableClassHolding> mapFromJson(dynamic json) {
    final map = <String, CaptableClassHolding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableClassHolding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableClassHolding-objects as value to a dart map
  static Map<String, List<CaptableClassHolding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableClassHolding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableClassHolding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

