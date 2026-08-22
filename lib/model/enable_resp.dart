//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnableResp {
  /// Returns a new [EnableResp] instance.
  EnableResp({
    this.accountToken,
    this.controller,
    this.namespace,
    this.urlTemplate,
  });
  /// AccountToken is the org's own tunnel-account credential. Treat it as a secret: it is what the CLI enables an environment with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountToken;

  /// Controller is the public controller endpoint the CLI enables against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? controller;

  /// Namespace is the public frontend a share is published into, when the deployment names one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// URLTemplate is the shape a share token expands to, so the CLI can print the resulting URL without asking again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlTemplate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnableResp &&
    other.accountToken == accountToken &&
    other.controller == controller &&
    other.namespace == namespace &&
    other.urlTemplate == urlTemplate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountToken == null ? 0 : accountToken!.hashCode) +
    (controller == null ? 0 : controller!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (urlTemplate == null ? 0 : urlTemplate!.hashCode);

  @override
  String toString() => 'EnableResp[accountToken=$accountToken, controller=$controller, namespace=$namespace, urlTemplate=$urlTemplate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountToken != null) {
      json[r'accountToken'] = this.accountToken;
    } else {
      json[r'accountToken'] = null;
    }
    if (this.controller != null) {
      json[r'controller'] = this.controller;
    } else {
      json[r'controller'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.urlTemplate != null) {
      json[r'urlTemplate'] = this.urlTemplate;
    } else {
      json[r'urlTemplate'] = null;
    }
    return json;
  }

  /// Returns a new [EnableResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnableResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnableResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnableResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnableResp(
        accountToken: mapValueOfType<String>(json, r'accountToken'),
        controller: mapValueOfType<String>(json, r'controller'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        urlTemplate: mapValueOfType<String>(json, r'urlTemplate'),
      );
    }
    return null;
  }

  static List<EnableResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnableResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnableResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnableResp> mapFromJson(dynamic json) {
    final map = <String, EnableResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnableResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnableResp-objects as value to a dart map
  static Map<String, List<EnableResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnableResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnableResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

