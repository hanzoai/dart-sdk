//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableCompanyUpdate {
  /// Returns a new [CaptableCompanyUpdate] instance.
  CaptableCompanyUpdate({
    this.incorporationCountry,
    this.incorporationState,
    this.incorporationType,
    this.name,
  });
  Object? incorporationCountry;

  Object? incorporationState;

  Object? incorporationType;

  Object? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableCompanyUpdate &&
    other.incorporationCountry == incorporationCountry &&
    other.incorporationState == incorporationState &&
    other.incorporationType == incorporationType &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (incorporationCountry == null ? 0 : incorporationCountry!.hashCode) +
    (incorporationState == null ? 0 : incorporationState!.hashCode) +
    (incorporationType == null ? 0 : incorporationType!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'CaptableCompanyUpdate[incorporationCountry=$incorporationCountry, incorporationState=$incorporationState, incorporationType=$incorporationType, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.incorporationCountry != null) {
      json[r'incorporationCountry'] = this.incorporationCountry;
    } else {
      json[r'incorporationCountry'] = null;
    }
    if (this.incorporationState != null) {
      json[r'incorporationState'] = this.incorporationState;
    } else {
      json[r'incorporationState'] = null;
    }
    if (this.incorporationType != null) {
      json[r'incorporationType'] = this.incorporationType;
    } else {
      json[r'incorporationType'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableCompanyUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableCompanyUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableCompanyUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableCompanyUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableCompanyUpdate(
        incorporationCountry: mapValueOfType<Object>(json, r'incorporationCountry'),
        incorporationState: mapValueOfType<Object>(json, r'incorporationState'),
        incorporationType: mapValueOfType<Object>(json, r'incorporationType'),
        name: mapValueOfType<Object>(json, r'name'),
      );
    }
    return null;
  }

  static List<CaptableCompanyUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableCompanyUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableCompanyUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableCompanyUpdate> mapFromJson(dynamic json) {
    final map = <String, CaptableCompanyUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableCompanyUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableCompanyUpdate-objects as value to a dart map
  static Map<String, List<CaptableCompanyUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableCompanyUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableCompanyUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

