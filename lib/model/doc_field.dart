//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DocField {
  /// Returns a new [DocField] instance.
  DocField({
    this.default_,
    this.fetchFrom,
    this.fieldname,
    this.fieldtype,
    this.hidden,
    this.inListView,
    this.label,
    this.options,
    this.readOnly,
    this.reqd,
    this.unique,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? default_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fetchFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldtype;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inListView;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? options;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? reqd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unique;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocField &&
    other.default_ == default_ &&
    other.fetchFrom == fetchFrom &&
    other.fieldname == fieldname &&
    other.fieldtype == fieldtype &&
    other.hidden == hidden &&
    other.inListView == inListView &&
    other.label == label &&
    other.options == options &&
    other.readOnly == readOnly &&
    other.reqd == reqd &&
    other.unique == unique;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (default_ == null ? 0 : default_!.hashCode) +
    (fetchFrom == null ? 0 : fetchFrom!.hashCode) +
    (fieldname == null ? 0 : fieldname!.hashCode) +
    (fieldtype == null ? 0 : fieldtype!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (inListView == null ? 0 : inListView!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (options == null ? 0 : options!.hashCode) +
    (readOnly == null ? 0 : readOnly!.hashCode) +
    (reqd == null ? 0 : reqd!.hashCode) +
    (unique == null ? 0 : unique!.hashCode);

  @override
  String toString() => 'DocField[default_=$default_, fetchFrom=$fetchFrom, fieldname=$fieldname, fieldtype=$fieldtype, hidden=$hidden, inListView=$inListView, label=$label, options=$options, readOnly=$readOnly, reqd=$reqd, unique=$unique]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
    if (this.fetchFrom != null) {
      json[r'fetchFrom'] = this.fetchFrom;
    } else {
      json[r'fetchFrom'] = null;
    }
    if (this.fieldname != null) {
      json[r'fieldname'] = this.fieldname;
    } else {
      json[r'fieldname'] = null;
    }
    if (this.fieldtype != null) {
      json[r'fieldtype'] = this.fieldtype;
    } else {
      json[r'fieldtype'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    if (this.inListView != null) {
      json[r'inListView'] = this.inListView;
    } else {
      json[r'inListView'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    if (this.readOnly != null) {
      json[r'readOnly'] = this.readOnly;
    } else {
      json[r'readOnly'] = null;
    }
    if (this.reqd != null) {
      json[r'reqd'] = this.reqd;
    } else {
      json[r'reqd'] = null;
    }
    if (this.unique != null) {
      json[r'unique'] = this.unique;
    } else {
      json[r'unique'] = null;
    }
    return json;
  }

  /// Returns a new [DocField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocField(
        default_: mapValueOfType<String>(json, r'default'),
        fetchFrom: mapValueOfType<String>(json, r'fetchFrom'),
        fieldname: mapValueOfType<String>(json, r'fieldname'),
        fieldtype: mapValueOfType<String>(json, r'fieldtype'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        inListView: mapValueOfType<bool>(json, r'inListView'),
        label: mapValueOfType<String>(json, r'label'),
        options: mapValueOfType<String>(json, r'options'),
        readOnly: mapValueOfType<bool>(json, r'readOnly'),
        reqd: mapValueOfType<bool>(json, r'reqd'),
        unique: mapValueOfType<bool>(json, r'unique'),
      );
    }
    return null;
  }

  static List<DocField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocField> mapFromJson(dynamic json) {
    final map = <String, DocField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocField-objects as value to a dart map
  static Map<String, List<DocField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

