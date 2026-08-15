//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocPerm {
  /// Returns a new [DocPerm] instance.
  DocPerm({
    this.cancel,
    this.create,
    this.delete,
    this.read,
    this.role,
    this.submit,
    this.write,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cancel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? create;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? read;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? submit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? write;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocPerm &&
    other.cancel == cancel &&
    other.create == create &&
    other.delete == delete &&
    other.read == read &&
    other.role == role &&
    other.submit == submit &&
    other.write == write;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cancel == null ? 0 : cancel!.hashCode) +
    (create == null ? 0 : create!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (read == null ? 0 : read!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (submit == null ? 0 : submit!.hashCode) +
    (write == null ? 0 : write!.hashCode);

  @override
  String toString() => 'DocPerm[cancel=$cancel, create=$create, delete=$delete, read=$read, role=$role, submit=$submit, write=$write]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cancel != null) {
      json[r'cancel'] = this.cancel;
    } else {
      json[r'cancel'] = null;
    }
    if (this.create != null) {
      json[r'create'] = this.create;
    } else {
      json[r'create'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.submit != null) {
      json[r'submit'] = this.submit;
    } else {
      json[r'submit'] = null;
    }
    if (this.write != null) {
      json[r'write'] = this.write;
    } else {
      json[r'write'] = null;
    }
    return json;
  }

  /// Returns a new [DocPerm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocPerm? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocPerm[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocPerm[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocPerm(
        cancel: mapValueOfType<bool>(json, r'cancel'),
        create: mapValueOfType<bool>(json, r'create'),
        delete: mapValueOfType<bool>(json, r'delete'),
        read: mapValueOfType<bool>(json, r'read'),
        role: mapValueOfType<String>(json, r'role'),
        submit: mapValueOfType<bool>(json, r'submit'),
        write: mapValueOfType<bool>(json, r'write'),
      );
    }
    return null;
  }

  static List<DocPerm> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocPerm>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocPerm.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocPerm> mapFromJson(dynamic json) {
    final map = <String, DocPerm>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocPerm.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocPerm-objects as value to a dart map
  static Map<String, List<DocPerm>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocPerm>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocPerm.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

