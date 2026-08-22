//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamMfaProps {
  /// Returns a new [IamMfaProps] instance.
  IamMfaProps({
    this.countryCode,
    this.enabled,
    this.isPreferred,
    this.mfaRememberInHours,
    this.mfaType,
    this.url,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreferred;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mfaRememberInHours;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mfaType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamMfaProps &&
    other.countryCode == countryCode &&
    other.enabled == enabled &&
    other.isPreferred == isPreferred &&
    other.mfaRememberInHours == mfaRememberInHours &&
    other.mfaType == mfaType &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (isPreferred == null ? 0 : isPreferred!.hashCode) +
    (mfaRememberInHours == null ? 0 : mfaRememberInHours!.hashCode) +
    (mfaType == null ? 0 : mfaType!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'IamMfaProps[countryCode=$countryCode, enabled=$enabled, isPreferred=$isPreferred, mfaRememberInHours=$mfaRememberInHours, mfaType=$mfaType, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.countryCode != null) {
      json[r'countryCode'] = this.countryCode;
    } else {
      json[r'countryCode'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.isPreferred != null) {
      json[r'isPreferred'] = this.isPreferred;
    } else {
      json[r'isPreferred'] = null;
    }
    if (this.mfaRememberInHours != null) {
      json[r'mfaRememberInHours'] = this.mfaRememberInHours;
    } else {
      json[r'mfaRememberInHours'] = null;
    }
    if (this.mfaType != null) {
      json[r'mfaType'] = this.mfaType;
    } else {
      json[r'mfaType'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [IamMfaProps] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamMfaProps? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamMfaProps[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamMfaProps[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamMfaProps(
        countryCode: mapValueOfType<String>(json, r'countryCode'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        isPreferred: mapValueOfType<bool>(json, r'isPreferred'),
        mfaRememberInHours: mapValueOfType<int>(json, r'mfaRememberInHours'),
        mfaType: mapValueOfType<String>(json, r'mfaType'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<IamMfaProps> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamMfaProps>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamMfaProps.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamMfaProps> mapFromJson(dynamic json) {
    final map = <String, IamMfaProps>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamMfaProps.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamMfaProps-objects as value to a dart map
  static Map<String, List<IamMfaProps>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamMfaProps>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamMfaProps.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

