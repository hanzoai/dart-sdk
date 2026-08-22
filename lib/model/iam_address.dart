//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamAddress {
  /// Returns a new [IamAddress] instance.
  IamAddress({
    this.city,
    this.line1,
    this.line2,
    this.region,
    this.state,
    this.tag,
    this.zipCode,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? line1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? line2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zipCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamAddress &&
    other.city == city &&
    other.line1 == line1 &&
    other.line2 == line2 &&
    other.region == region &&
    other.state == state &&
    other.tag == tag &&
    other.zipCode == zipCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (city == null ? 0 : city!.hashCode) +
    (line1 == null ? 0 : line1!.hashCode) +
    (line2 == null ? 0 : line2!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (tag == null ? 0 : tag!.hashCode) +
    (zipCode == null ? 0 : zipCode!.hashCode);

  @override
  String toString() => 'IamAddress[city=$city, line1=$line1, line2=$line2, region=$region, state=$state, tag=$tag, zipCode=$zipCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.line1 != null) {
      json[r'line1'] = this.line1;
    } else {
      json[r'line1'] = null;
    }
    if (this.line2 != null) {
      json[r'line2'] = this.line2;
    } else {
      json[r'line2'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    if (this.zipCode != null) {
      json[r'zipCode'] = this.zipCode;
    } else {
      json[r'zipCode'] = null;
    }
    return json;
  }

  /// Returns a new [IamAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamAddress(
        city: mapValueOfType<String>(json, r'city'),
        line1: mapValueOfType<String>(json, r'line1'),
        line2: mapValueOfType<String>(json, r'line2'),
        region: mapValueOfType<String>(json, r'region'),
        state: mapValueOfType<String>(json, r'state'),
        tag: mapValueOfType<String>(json, r'tag'),
        zipCode: mapValueOfType<String>(json, r'zipCode'),
      );
    }
    return null;
  }

  static List<IamAddress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamAddress> mapFromJson(dynamic json) {
    final map = <String, IamAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamAddress-objects as value to a dart map
  static Map<String, List<IamAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamAddress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamAddress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

