//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamScopeItem {
  /// Returns a new [IamScopeItem] instance.
  IamScopeItem({
    this.description,
    this.displayName,
    this.name,
    this.tools = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<String> tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamScopeItem &&
    other.description == description &&
    other.displayName == displayName &&
    other.name == name &&
    _deepEquality.equals(other.tools, tools);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tools.hashCode);

  @override
  String toString() => 'IamScopeItem[description=$description, displayName=$displayName, name=$name, tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'tools'] = this.tools;
    return json;
  }

  /// Returns a new [IamScopeItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamScopeItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamScopeItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamScopeItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamScopeItem(
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        name: mapValueOfType<String>(json, r'name'),
        tools: json[r'tools'] is Iterable
            ? (json[r'tools'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IamScopeItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamScopeItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamScopeItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamScopeItem> mapFromJson(dynamic json) {
    final map = <String, IamScopeItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamScopeItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamScopeItem-objects as value to a dart map
  static Map<String, List<IamScopeItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamScopeItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamScopeItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

