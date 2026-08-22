//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocType {
  /// Returns a new [DocType] instance.
  DocType({
    this.autoname,
    this.createdAt,
    this.fields = const [],
    this.isSingle,
    this.isSubmittable,
    this.module,
    this.name,
    this.permissions = const [],
    this.titleField,
    this.updatedAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? autoname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  List<DocField> fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSingle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSubmittable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? module;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<DocPerm> permissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titleField;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocType &&
    other.autoname == autoname &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.fields, fields) &&
    other.isSingle == isSingle &&
    other.isSubmittable == isSubmittable &&
    other.module == module &&
    other.name == name &&
    _deepEquality.equals(other.permissions, permissions) &&
    other.titleField == titleField &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (autoname == null ? 0 : autoname!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (fields.hashCode) +
    (isSingle == null ? 0 : isSingle!.hashCode) +
    (isSubmittable == null ? 0 : isSubmittable!.hashCode) +
    (module == null ? 0 : module!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (permissions.hashCode) +
    (titleField == null ? 0 : titleField!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DocType[autoname=$autoname, createdAt=$createdAt, fields=$fields, isSingle=$isSingle, isSubmittable=$isSubmittable, module=$module, name=$name, permissions=$permissions, titleField=$titleField, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.autoname != null) {
      json[r'autoname'] = this.autoname;
    } else {
      json[r'autoname'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.isSingle != null) {
      json[r'isSingle'] = this.isSingle;
    } else {
      json[r'isSingle'] = null;
    }
    if (this.isSubmittable != null) {
      json[r'isSubmittable'] = this.isSubmittable;
    } else {
      json[r'isSubmittable'] = null;
    }
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'permissions'] = this.permissions;
    if (this.titleField != null) {
      json[r'titleField'] = this.titleField;
    } else {
      json[r'titleField'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [DocType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocType[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocType[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocType(
        autoname: mapValueOfType<String>(json, r'autoname'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        fields: DocField.listFromJson(json[r'fields']),
        isSingle: mapValueOfType<bool>(json, r'isSingle'),
        isSubmittable: mapValueOfType<bool>(json, r'isSubmittable'),
        module: mapValueOfType<String>(json, r'module'),
        name: mapValueOfType<String>(json, r'name'),
        permissions: DocPerm.listFromJson(json[r'permissions']),
        titleField: mapValueOfType<String>(json, r'titleField'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<DocType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocType> mapFromJson(dynamic json) {
    final map = <String, DocType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocType-objects as value to a dart map
  static Map<String, List<DocType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

