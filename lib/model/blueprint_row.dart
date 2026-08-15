//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BlueprintRow {
  /// Returns a new [BlueprintRow] instance.
  BlueprintRow({
    this.estCentsPerMonth,
    this.services,
    this.templateId,
  });

  /// CentsPerMonth is the estimated compute cost of running the whole stack for one month, in USD cents, from the rate card GET /v1/blueprint/health echoes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? estCentsPerMonth;

  /// Services is how many compose services the stack runs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? services;

  /// TemplateID is the blueprint slug — the id GET /v1/blueprint/sbom takes as ?template= and the path under templates.hanzo.ai/blueprints/<id>/.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlueprintRow &&
    other.estCentsPerMonth == estCentsPerMonth &&
    other.services == services &&
    other.templateId == templateId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (estCentsPerMonth == null ? 0 : estCentsPerMonth!.hashCode) +
    (services == null ? 0 : services!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode);

  @override
  String toString() => 'BlueprintRow[estCentsPerMonth=$estCentsPerMonth, services=$services, templateId=$templateId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.estCentsPerMonth != null) {
      json[r'estCentsPerMonth'] = this.estCentsPerMonth;
    } else {
      json[r'estCentsPerMonth'] = null;
    }
    if (this.services != null) {
      json[r'services'] = this.services;
    } else {
      json[r'services'] = null;
    }
    if (this.templateId != null) {
      json[r'templateId'] = this.templateId;
    } else {
      json[r'templateId'] = null;
    }
    return json;
  }

  /// Returns a new [BlueprintRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlueprintRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlueprintRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlueprintRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlueprintRow(
        estCentsPerMonth: mapValueOfType<int>(json, r'estCentsPerMonth'),
        services: mapValueOfType<int>(json, r'services'),
        templateId: mapValueOfType<String>(json, r'templateId'),
      );
    }
    return null;
  }

  static List<BlueprintRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlueprintRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlueprintRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlueprintRow> mapFromJson(dynamic json) {
    final map = <String, BlueprintRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlueprintRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlueprintRow-objects as value to a dart map
  static Map<String, List<BlueprintRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlueprintRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlueprintRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

