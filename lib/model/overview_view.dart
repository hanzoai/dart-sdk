//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OverviewView {
  /// Returns a new [OverviewView] instance.
  OverviewView({
    this.custom,
    this.funnel,
    this.progress,
    this.steps = const [],
    this.title,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? custom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Funnel? funnel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProgressView? progress;

  List<StepView> steps;

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
  bool operator ==(Object other) => identical(this, other) || other is OverviewView &&
    other.custom == custom &&
    other.funnel == funnel &&
    other.progress == progress &&
    _deepEquality.equals(other.steps, steps) &&
    other.title == title &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (custom == null ? 0 : custom!.hashCode) +
    (funnel == null ? 0 : funnel!.hashCode) +
    (progress == null ? 0 : progress!.hashCode) +
    (steps.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'OverviewView[custom=$custom, funnel=$funnel, progress=$progress, steps=$steps, title=$title, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.custom != null) {
      json[r'custom'] = this.custom;
    } else {
      json[r'custom'] = null;
    }
    if (this.funnel != null) {
      json[r'funnel'] = this.funnel;
    } else {
      json[r'funnel'] = null;
    }
    if (this.progress != null) {
      json[r'progress'] = this.progress;
    } else {
      json[r'progress'] = null;
    }
      json[r'steps'] = this.steps;
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

  /// Returns a new [OverviewView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OverviewView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OverviewView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OverviewView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OverviewView(
        custom: mapValueOfType<bool>(json, r'custom'),
        funnel: Funnel.fromJson(json[r'funnel']),
        progress: ProgressView.fromJson(json[r'progress']),
        steps: StepView.listFromJson(json[r'steps']),
        title: mapValueOfType<String>(json, r'title'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<OverviewView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OverviewView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OverviewView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OverviewView> mapFromJson(dynamic json) {
    final map = <String, OverviewView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OverviewView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OverviewView-objects as value to a dart map
  static Map<String, List<OverviewView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OverviewView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OverviewView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

