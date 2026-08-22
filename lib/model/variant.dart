//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Variant {
  /// Returns a new [Variant] instance.
  Variant({
    this.framework,
    this.id,
    this.kind,
    this.label,
    this.source_,
  });
  /// only when it differs from the template's
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// selector, unique within the template (\"react\", \"grid-3-fluid\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// the axis it varies: format | page | theme
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// human label for the picker
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// the repository this shape is forked from; the synthesized default shape carries the template's own
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Variant &&
    other.framework == framework &&
    other.id == id &&
    other.kind == kind &&
    other.label == label &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (framework == null ? 0 : framework!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'Variant[framework=$framework, id=$id, kind=$kind, label=$label, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [Variant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Variant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Variant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Variant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Variant(
        framework: mapValueOfType<String>(json, r'framework'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        label: mapValueOfType<String>(json, r'label'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<Variant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Variant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Variant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Variant> mapFromJson(dynamic json) {
    final map = <String, Variant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Variant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Variant-objects as value to a dart map
  static Map<String, List<Variant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Variant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Variant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

