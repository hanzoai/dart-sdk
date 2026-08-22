//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTransactionResult {
  /// Returns a new [O11yO11yTransactionResult] instance.
  O11yO11yTransactionResult({
    this.authorized,
    this.object,
    this.relation,
  });
  /// Authorized says whether the caller may do it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? authorized;

  /// Object is the resource it would act on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yObject? object;

  /// Relation is the verb that was asked about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTransactionResult &&
    other.authorized == authorized &&
    other.object == object &&
    other.relation == relation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorized == null ? 0 : authorized!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (relation == null ? 0 : relation!.hashCode);

  @override
  String toString() => 'O11yO11yTransactionResult[authorized=$authorized, object=$object, relation=$relation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorized != null) {
      json[r'authorized'] = this.authorized;
    } else {
      json[r'authorized'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yTransactionResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTransactionResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTransactionResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTransactionResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTransactionResult(
        authorized: mapValueOfType<bool>(json, r'authorized'),
        object: O11yO11yObject.fromJson(json[r'object']),
        relation: mapValueOfType<String>(json, r'relation'),
      );
    }
    return null;
  }

  static List<O11yO11yTransactionResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTransactionResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTransactionResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTransactionResult> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTransactionResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTransactionResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTransactionResult-objects as value to a dart map
  static Map<String, List<O11yO11yTransactionResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTransactionResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTransactionResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

