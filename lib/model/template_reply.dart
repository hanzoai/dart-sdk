//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TemplateReply {
  /// Returns a new [TemplateReply] instance.
  TemplateReply({
    this.disclaimer,
    this.template,
  });
  /// Disclaimer is the boundary made visible on the wire.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disclaimer;

  /// Template is the resolved template — the org's override if it has one, else the built-in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LegalTemplate? template;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateReply &&
    other.disclaimer == disclaimer &&
    other.template == template;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disclaimer == null ? 0 : disclaimer!.hashCode) +
    (template == null ? 0 : template!.hashCode);

  @override
  String toString() => 'TemplateReply[disclaimer=$disclaimer, template=$template]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disclaimer != null) {
      json[r'disclaimer'] = this.disclaimer;
    } else {
      json[r'disclaimer'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    return json;
  }

  /// Returns a new [TemplateReply] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateReply? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateReply[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateReply[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateReply(
        disclaimer: mapValueOfType<String>(json, r'disclaimer'),
        template: LegalTemplate.fromJson(json[r'template']),
      );
    }
    return null;
  }

  static List<TemplateReply> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateReply>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateReply.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateReply> mapFromJson(dynamic json) {
    final map = <String, TemplateReply>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateReply.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateReply-objects as value to a dart map
  static Map<String, List<TemplateReply>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateReply>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateReply.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

