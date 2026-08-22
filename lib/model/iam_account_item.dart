//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamAccountItem {
  /// Returns a new [IamAccountItem] instance.
  IamAccountItem({
    this.modifyRule,
    this.name,
    this.regex,
    this.tab,
    this.viewRule,
    this.visible,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modifyRule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tab;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? viewRule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? visible;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamAccountItem &&
    other.modifyRule == modifyRule &&
    other.name == name &&
    other.regex == regex &&
    other.tab == tab &&
    other.viewRule == viewRule &&
    other.visible == visible;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (modifyRule == null ? 0 : modifyRule!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (regex == null ? 0 : regex!.hashCode) +
    (tab == null ? 0 : tab!.hashCode) +
    (viewRule == null ? 0 : viewRule!.hashCode) +
    (visible == null ? 0 : visible!.hashCode);

  @override
  String toString() => 'IamAccountItem[modifyRule=$modifyRule, name=$name, regex=$regex, tab=$tab, viewRule=$viewRule, visible=$visible]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.modifyRule != null) {
      json[r'modifyRule'] = this.modifyRule;
    } else {
      json[r'modifyRule'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.regex != null) {
      json[r'regex'] = this.regex;
    } else {
      json[r'regex'] = null;
    }
    if (this.tab != null) {
      json[r'tab'] = this.tab;
    } else {
      json[r'tab'] = null;
    }
    if (this.viewRule != null) {
      json[r'viewRule'] = this.viewRule;
    } else {
      json[r'viewRule'] = null;
    }
    if (this.visible != null) {
      json[r'visible'] = this.visible;
    } else {
      json[r'visible'] = null;
    }
    return json;
  }

  /// Returns a new [IamAccountItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamAccountItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamAccountItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamAccountItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamAccountItem(
        modifyRule: mapValueOfType<String>(json, r'modifyRule'),
        name: mapValueOfType<String>(json, r'name'),
        regex: mapValueOfType<String>(json, r'regex'),
        tab: mapValueOfType<String>(json, r'tab'),
        viewRule: mapValueOfType<String>(json, r'viewRule'),
        visible: mapValueOfType<bool>(json, r'visible'),
      );
    }
    return null;
  }

  static List<IamAccountItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamAccountItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamAccountItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamAccountItem> mapFromJson(dynamic json) {
    final map = <String, IamAccountItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamAccountItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamAccountItem-objects as value to a dart map
  static Map<String, List<IamAccountItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamAccountItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamAccountItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

