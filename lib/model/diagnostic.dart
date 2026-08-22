//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Diagnostic {
  /// Returns a new [Diagnostic] instance.
  Diagnostic({
    this.code,
    this.message,
    this.range,
    this.severity,
    this.source_,
  });
  /// Code is the checker's own identifier for the rule, a string or a number depending on the server. Absent when it published none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? code;

  /// Message is the problem in the server's own words, meant to be shown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Range is the span the problem is about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Range? range;

  /// Severity is the LSP's: 1 error, 2 warning, 3 information, 4 hint. A file with only 3s and 4s still compiles.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? severity;

  /// Source is which checker reported it (\"compiler\", \"go vet\", a linter's name), which is what separates a build error from a style opinion.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Diagnostic &&
    other.code == code &&
    other.message == message &&
    other.range == range &&
    other.severity == severity &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (severity == null ? 0 : severity!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'Diagnostic[code=$code, message=$message, range=$range, severity=$severity, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [Diagnostic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Diagnostic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Diagnostic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Diagnostic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Diagnostic(
        code: mapValueOfType<Object>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        range: Range.fromJson(json[r'range']),
        severity: mapValueOfType<int>(json, r'severity'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<Diagnostic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Diagnostic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Diagnostic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Diagnostic> mapFromJson(dynamic json) {
    final map = <String, Diagnostic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Diagnostic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Diagnostic-objects as value to a dart map
  static Map<String, List<Diagnostic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Diagnostic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Diagnostic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

