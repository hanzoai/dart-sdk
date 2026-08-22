//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamPermissionListResponse {
  /// Returns a new [IamPermissionListResponse] instance.
  IamPermissionListResponse({
    this.permissions = const [],
  });
  List<IamPermission> permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamPermissionListResponse &&
    _deepEquality.equals(other.permissions, permissions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (permissions.hashCode);

  @override
  String toString() => 'IamPermissionListResponse[permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'permissions'] = this.permissions;
    return json;
  }

  /// Returns a new [IamPermissionListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamPermissionListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamPermissionListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamPermissionListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamPermissionListResponse(
        permissions: IamPermission.listFromJson(json[r'permissions']),
      );
    }
    return null;
  }

  static List<IamPermissionListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamPermissionListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamPermissionListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamPermissionListResponse> mapFromJson(dynamic json) {
    final map = <String, IamPermissionListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamPermissionListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamPermissionListResponse-objects as value to a dart map
  static Map<String, List<IamPermissionListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamPermissionListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamPermissionListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

