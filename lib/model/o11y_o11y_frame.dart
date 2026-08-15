//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yFrame {
  /// Returns a new [O11yO11yFrame] instance.
  O11yO11yFrame({
    this.column,
    this.file,
    this.function_,
    this.line,
    this.own,
  });

  /// Column is the column number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? column;

  /// File is the file it is in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? file;

  /// Function is the function the frame is in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? function_;

  /// Line is the line number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  /// Own marks a frame in the reporting application's own code rather than in a dependency or the runtime.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? own;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yFrame &&
    other.column == column &&
    other.file == file &&
    other.function_ == function_ &&
    other.line == line &&
    other.own == own;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (column == null ? 0 : column!.hashCode) +
    (file == null ? 0 : file!.hashCode) +
    (function_ == null ? 0 : function_!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (own == null ? 0 : own!.hashCode);

  @override
  String toString() => 'O11yO11yFrame[column=$column, file=$file, function_=$function_, line=$line, own=$own]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.column != null) {
      json[r'column'] = this.column;
    } else {
      json[r'column'] = null;
    }
    if (this.file != null) {
      json[r'file'] = this.file;
    } else {
      json[r'file'] = null;
    }
    if (this.function_ != null) {
      json[r'function'] = this.function_;
    } else {
      json[r'function'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    if (this.own != null) {
      json[r'own'] = this.own;
    } else {
      json[r'own'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yFrame] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yFrame? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yFrame[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yFrame[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yFrame(
        column: mapValueOfType<int>(json, r'column'),
        file: mapValueOfType<String>(json, r'file'),
        function_: mapValueOfType<String>(json, r'function'),
        line: mapValueOfType<int>(json, r'line'),
        own: mapValueOfType<bool>(json, r'own'),
      );
    }
    return null;
  }

  static List<O11yO11yFrame> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yFrame>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yFrame.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yFrame> mapFromJson(dynamic json) {
    final map = <String, O11yO11yFrame>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yFrame.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yFrame-objects as value to a dart map
  static Map<String, List<O11yO11yFrame>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yFrame>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yFrame.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

