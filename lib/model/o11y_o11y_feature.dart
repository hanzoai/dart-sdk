//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yFeature {
  /// Returns a new [O11yO11yFeature] instance.
  O11yO11yFeature({
    this.defaultVariant,
    this.description,
    this.kind,
    this.name,
    this.resolvedValue,
    this.stage,
    this.variants = const {},
  });

  /// DefaultVariant is the variant used when nothing overrides it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultVariant;

  /// Description says what the flag gates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Kind is the flag's value kind, e.g. boolean.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the flag's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ResolvedValue is the value resolved for the caller's org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? resolvedValue;

  /// Stage is the flag's lifecycle stage, e.g. stable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  /// Variants are the flag's possible values, by variant name.
  Map<String, Object> variants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yFeature &&
    other.defaultVariant == defaultVariant &&
    other.description == description &&
    other.kind == kind &&
    other.name == name &&
    other.resolvedValue == resolvedValue &&
    other.stage == stage &&
    _deepEquality.equals(other.variants, variants);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultVariant == null ? 0 : defaultVariant!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (resolvedValue == null ? 0 : resolvedValue!.hashCode) +
    (stage == null ? 0 : stage!.hashCode) +
    (variants.hashCode);

  @override
  String toString() => 'O11yO11yFeature[defaultVariant=$defaultVariant, description=$description, kind=$kind, name=$name, resolvedValue=$resolvedValue, stage=$stage, variants=$variants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultVariant != null) {
      json[r'defaultVariant'] = this.defaultVariant;
    } else {
      json[r'defaultVariant'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.resolvedValue != null) {
      json[r'resolvedValue'] = this.resolvedValue;
    } else {
      json[r'resolvedValue'] = null;
    }
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
      json[r'variants'] = this.variants;
    return json;
  }

  /// Returns a new [O11yO11yFeature] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yFeature? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yFeature[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yFeature[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yFeature(
        defaultVariant: mapValueOfType<String>(json, r'defaultVariant'),
        description: mapValueOfType<String>(json, r'description'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        resolvedValue: mapValueOfType<Object>(json, r'resolvedValue'),
        stage: mapValueOfType<String>(json, r'stage'),
        variants: mapCastOfType<String, Object>(json, r'variants') ?? const {},
      );
    }
    return null;
  }

  static List<O11yO11yFeature> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yFeature>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yFeature.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yFeature> mapFromJson(dynamic json) {
    final map = <String, O11yO11yFeature>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yFeature.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yFeature-objects as value to a dart map
  static Map<String, List<O11yO11yFeature>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yFeature>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yFeature.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

