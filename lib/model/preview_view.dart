//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PreviewView {
  /// Returns a new [PreviewView] instance.
  PreviewView({
    this.app,
    this.branch,
    this.deployment,
    this.url,
  });

  /// App is the preview application's own slug, `<app>-<branch>`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// Branch is the branch this preview maps.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Deployment is the deployment the preview recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeploymentView? deployment;

  /// URL is the preview's live HTTPS address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PreviewView &&
    other.app == app &&
    other.branch == branch &&
    other.deployment == deployment &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (branch == null ? 0 : branch!.hashCode) +
    (deployment == null ? 0 : deployment!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'PreviewView[app=$app, branch=$branch, deployment=$deployment, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.deployment != null) {
      json[r'deployment'] = this.deployment;
    } else {
      json[r'deployment'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [PreviewView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PreviewView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PreviewView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PreviewView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PreviewView(
        app: mapValueOfType<String>(json, r'app'),
        branch: mapValueOfType<String>(json, r'branch'),
        deployment: DeploymentView.fromJson(json[r'deployment']),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<PreviewView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PreviewView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PreviewView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PreviewView> mapFromJson(dynamic json) {
    final map = <String, PreviewView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PreviewView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PreviewView-objects as value to a dart map
  static Map<String, List<PreviewView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PreviewView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PreviewView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

