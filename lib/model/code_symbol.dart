//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodeSymbol {
  /// Returns a new [CodeSymbol] instance.
  CodeSymbol({
    this.detail,
    this.kind,
    this.name,
    this.range,
  });
  /// Detail is the server's short elaboration, typically the signature. Absent when it offered none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  /// Kind is the LSP SymbolKind number (5 class, 6 method, 12 function, 23 struct, …), passed through rather than translated to a word — these callers already speak LSP, and inventing a second vocabulary is how the two drift.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? kind;

  /// Name is the declared identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Range is the declaration's span in the file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Range? range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeSymbol &&
    other.detail == detail &&
    other.kind == kind &&
    other.name == name &&
    other.range == range;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (detail == null ? 0 : detail!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (range == null ? 0 : range!.hashCode);

  @override
  String toString() => 'CodeSymbol[detail=$detail, kind=$kind, name=$name, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    return json;
  }

  /// Returns a new [CodeSymbol] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeSymbol? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeSymbol[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeSymbol[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeSymbol(
        detail: mapValueOfType<String>(json, r'detail'),
        kind: mapValueOfType<int>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        range: Range.fromJson(json[r'range']),
      );
    }
    return null;
  }

  static List<CodeSymbol> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeSymbol>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeSymbol.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeSymbol> mapFromJson(dynamic json) {
    final map = <String, CodeSymbol>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeSymbol.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeSymbol-objects as value to a dart map
  static Map<String, List<CodeSymbol>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeSymbol>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeSymbol.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

