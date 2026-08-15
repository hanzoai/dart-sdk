//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Blueprint {
  /// Returns a new [Blueprint] instance.
  Blueprint({
    this.brand,
    this.enabled,
    this.principles = const [],
    this.sections = const [],
    this.steps = const [],
    this.strategies = const [],
    this.templates = const [],
    this.title,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// the 64-principle spine (Zen of Hanzo archetypes)
  List<Principle> principles;

  List<Section> sections;

  List<JourneyStep> steps;

  List<Strategy> strategies;

  List<Page> templates;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Blueprint &&
    other.brand == brand &&
    other.enabled == enabled &&
    _deepEquality.equals(other.principles, principles) &&
    _deepEquality.equals(other.sections, sections) &&
    _deepEquality.equals(other.steps, steps) &&
    _deepEquality.equals(other.strategies, strategies) &&
    _deepEquality.equals(other.templates, templates) &&
    other.title == title &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brand == null ? 0 : brand!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (principles.hashCode) +
    (sections.hashCode) +
    (steps.hashCode) +
    (strategies.hashCode) +
    (templates.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'Blueprint[brand=$brand, enabled=$enabled, principles=$principles, sections=$sections, steps=$steps, strategies=$strategies, templates=$templates, title=$title, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'principles'] = this.principles;
      json[r'sections'] = this.sections;
      json[r'steps'] = this.steps;
      json[r'strategies'] = this.strategies;
      json[r'templates'] = this.templates;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [Blueprint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blueprint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Blueprint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Blueprint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Blueprint(
        brand: mapValueOfType<String>(json, r'brand'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        principles: Principle.listFromJson(json[r'principles']),
        sections: Section.listFromJson(json[r'sections']),
        steps: JourneyStep.listFromJson(json[r'steps']),
        strategies: Strategy.listFromJson(json[r'strategies']),
        templates: Page.listFromJson(json[r'templates']),
        title: mapValueOfType<String>(json, r'title'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<Blueprint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Blueprint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Blueprint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Blueprint> mapFromJson(dynamic json) {
    final map = <String, Blueprint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blueprint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Blueprint-objects as value to a dart map
  static Map<String, List<Blueprint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Blueprint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Blueprint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

