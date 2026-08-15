//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11ySAMLConfig {
  /// Returns a new [O11yO11ySAMLConfig] instance.
  O11yO11ySAMLConfig({
    this.attributeMapping,
    this.insecureSkipAuthNRequestsSigned,
    this.samlCert,
    this.samlEntity,
    this.samlIdp,
  });

  /// AttributeMapping names the assertion attributes to read identity from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAttributeMapping? attributeMapping;

  /// InsecureSkipAuthNRequestsSigned skips signing outgoing AuthN requests, for IdPs that refuse signed ones.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? insecureSkipAuthNRequestsSigned;

  /// SamlCert is the IdP's signing certificate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? samlCert;

  /// SamlEntity is the IdP's entityID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? samlEntity;

  /// SamlIdp is the IdP's single-sign-on endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? samlIdp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11ySAMLConfig &&
    other.attributeMapping == attributeMapping &&
    other.insecureSkipAuthNRequestsSigned == insecureSkipAuthNRequestsSigned &&
    other.samlCert == samlCert &&
    other.samlEntity == samlEntity &&
    other.samlIdp == samlIdp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attributeMapping == null ? 0 : attributeMapping!.hashCode) +
    (insecureSkipAuthNRequestsSigned == null ? 0 : insecureSkipAuthNRequestsSigned!.hashCode) +
    (samlCert == null ? 0 : samlCert!.hashCode) +
    (samlEntity == null ? 0 : samlEntity!.hashCode) +
    (samlIdp == null ? 0 : samlIdp!.hashCode);

  @override
  String toString() => 'O11yO11ySAMLConfig[attributeMapping=$attributeMapping, insecureSkipAuthNRequestsSigned=$insecureSkipAuthNRequestsSigned, samlCert=$samlCert, samlEntity=$samlEntity, samlIdp=$samlIdp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attributeMapping != null) {
      json[r'attributeMapping'] = this.attributeMapping;
    } else {
      json[r'attributeMapping'] = null;
    }
    if (this.insecureSkipAuthNRequestsSigned != null) {
      json[r'insecureSkipAuthNRequestsSigned'] = this.insecureSkipAuthNRequestsSigned;
    } else {
      json[r'insecureSkipAuthNRequestsSigned'] = null;
    }
    if (this.samlCert != null) {
      json[r'samlCert'] = this.samlCert;
    } else {
      json[r'samlCert'] = null;
    }
    if (this.samlEntity != null) {
      json[r'samlEntity'] = this.samlEntity;
    } else {
      json[r'samlEntity'] = null;
    }
    if (this.samlIdp != null) {
      json[r'samlIdp'] = this.samlIdp;
    } else {
      json[r'samlIdp'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11ySAMLConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11ySAMLConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11ySAMLConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11ySAMLConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11ySAMLConfig(
        attributeMapping: O11yO11yAttributeMapping.fromJson(json[r'attributeMapping']),
        insecureSkipAuthNRequestsSigned: mapValueOfType<bool>(json, r'insecureSkipAuthNRequestsSigned'),
        samlCert: mapValueOfType<String>(json, r'samlCert'),
        samlEntity: mapValueOfType<String>(json, r'samlEntity'),
        samlIdp: mapValueOfType<String>(json, r'samlIdp'),
      );
    }
    return null;
  }

  static List<O11yO11ySAMLConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11ySAMLConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11ySAMLConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11ySAMLConfig> mapFromJson(dynamic json) {
    final map = <String, O11yO11ySAMLConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11ySAMLConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11ySAMLConfig-objects as value to a dart map
  static Map<String, List<O11yO11ySAMLConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11ySAMLConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11ySAMLConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

