//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamListOrganizationsOutput {
  /// Returns a new [IamListOrganizationsOutput] instance.
  IamListOrganizationsOutput({
    this.count,
    this.organizations = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  List<IamOrganization> organizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamListOrganizationsOutput &&
    other.count == count &&
    _deepEquality.equals(other.organizations, organizations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (organizations.hashCode);

  @override
  String toString() => 'IamListOrganizationsOutput[count=$count, organizations=$organizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
      json[r'organizations'] = this.organizations;
    return json;
  }

  /// Returns a new [IamListOrganizationsOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamListOrganizationsOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamListOrganizationsOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamListOrganizationsOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamListOrganizationsOutput(
        count: mapValueOfType<int>(json, r'count'),
        organizations: IamOrganization.listFromJson(json[r'organizations']),
      );
    }
    return null;
  }

  static List<IamListOrganizationsOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamListOrganizationsOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamListOrganizationsOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamListOrganizationsOutput> mapFromJson(dynamic json) {
    final map = <String, IamListOrganizationsOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamListOrganizationsOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamListOrganizationsOutput-objects as value to a dart map
  static Map<String, List<IamListOrganizationsOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamListOrganizationsOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamListOrganizationsOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

