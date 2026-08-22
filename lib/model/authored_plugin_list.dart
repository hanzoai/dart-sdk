//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AuthoredPluginList {
  /// Returns a new [AuthoredPluginList] instance.
  AuthoredPluginList({
    this.plugins = const [],
  });
  /// Plugins is every plugin this org built, newest first, each carrying the TypeScript as authored. The bundled artifact is never rendered.
  List<AuthoredPlugin> plugins;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthoredPluginList &&
    _deepEquality.equals(other.plugins, plugins);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (plugins.hashCode);

  @override
  String toString() => 'AuthoredPluginList[plugins=$plugins]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'plugins'] = this.plugins;
    return json;
  }

  /// Returns a new [AuthoredPluginList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthoredPluginList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthoredPluginList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthoredPluginList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthoredPluginList(
        plugins: AuthoredPlugin.listFromJson(json[r'plugins']),
      );
    }
    return null;
  }

  static List<AuthoredPluginList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthoredPluginList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthoredPluginList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthoredPluginList> mapFromJson(dynamic json) {
    final map = <String, AuthoredPluginList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthoredPluginList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthoredPluginList-objects as value to a dart map
  static Map<String, List<AuthoredPluginList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthoredPluginList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthoredPluginList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

