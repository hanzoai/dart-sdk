//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SafeOut {
  /// Returns a new [SafeOut] instance.
  SafeOut({
    this.esignRef,
    this.provider,
  });

  /// EsignRef is the provider's reference for the signature request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? esignRef;

  /// Provider is the wired e-signature provider's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SafeOut &&
    other.esignRef == esignRef &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (esignRef == null ? 0 : esignRef!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'SafeOut[esignRef=$esignRef, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.esignRef != null) {
      json[r'esignRef'] = this.esignRef;
    } else {
      json[r'esignRef'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [SafeOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SafeOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SafeOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SafeOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SafeOut(
        esignRef: mapValueOfType<String>(json, r'esignRef'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<SafeOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SafeOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SafeOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SafeOut> mapFromJson(dynamic json) {
    final map = <String, SafeOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SafeOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SafeOut-objects as value to a dart map
  static Map<String, List<SafeOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SafeOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SafeOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

