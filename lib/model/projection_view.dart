//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectionView {
  /// Returns a new [ProjectionView] instance.
  ProjectionView({
    this.apps = const {},
    this.tier,
  });

  /// Apps says, per console app, whether the org may open it. The SAME six keys are always present (studio, bot, world, platform, team, admin), so a client maps over it unconditionally; a key is false both when the plan does not grant the app and when commerce could not be reached, because a read that decides what to SHOW fails to LOCKED rather than to an error.
  Map<String, bool> apps;

  /// Tier is the plan slug commerce resolved for the org, or \"\" when the org has no active licensing subscription — which the console treats as its free default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectionView &&
    _deepEquality.equals(other.apps, apps) &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apps.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'ProjectionView[apps=$apps, tier=$tier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apps'] = this.apps;
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectionView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectionView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectionView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectionView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectionView(
        apps: mapCastOfType<String, bool>(json, r'apps') ?? const {},
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<ProjectionView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectionView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectionView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectionView> mapFromJson(dynamic json) {
    final map = <String, ProjectionView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectionView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectionView-objects as value to a dart map
  static Map<String, List<ProjectionView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectionView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectionView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

