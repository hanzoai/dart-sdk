//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamMutationResult {
  /// Returns a new [IamMutationResult] instance.
  IamMutationResult({
    this.affected,
    this.provider,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? affected;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamProvider? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamMutationResult &&
    other.affected == affected &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affected == null ? 0 : affected!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'IamMutationResult[affected=$affected, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affected != null) {
      json[r'affected'] = this.affected;
    } else {
      json[r'affected'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [IamMutationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamMutationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamMutationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamMutationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamMutationResult(
        affected: mapValueOfType<bool>(json, r'affected'),
        provider: IamProvider.fromJson(json[r'provider']),
      );
    }
    return null;
  }

  static List<IamMutationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamMutationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamMutationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamMutationResult> mapFromJson(dynamic json) {
    final map = <String, IamMutationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamMutationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamMutationResult-objects as value to a dart map
  static Map<String, List<IamMutationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamMutationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamMutationResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

