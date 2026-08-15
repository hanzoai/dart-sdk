//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamTokenMutation {
  /// Returns a new [IamTokenMutation] instance.
  IamTokenMutation({
    this.affected,
    this.token,
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
  IamToken? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamTokenMutation &&
    other.affected == affected &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affected == null ? 0 : affected!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'IamTokenMutation[affected=$affected, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affected != null) {
      json[r'affected'] = this.affected;
    } else {
      json[r'affected'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [IamTokenMutation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamTokenMutation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamTokenMutation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamTokenMutation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamTokenMutation(
        affected: mapValueOfType<bool>(json, r'affected'),
        token: IamToken.fromJson(json[r'token']),
      );
    }
    return null;
  }

  static List<IamTokenMutation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamTokenMutation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamTokenMutation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamTokenMutation> mapFromJson(dynamic json) {
    final map = <String, IamTokenMutation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamTokenMutation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamTokenMutation-objects as value to a dart map
  static Map<String, List<IamTokenMutation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamTokenMutation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamTokenMutation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

