//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yOccurrenceFrame {
  /// Returns a new [O11yO11yOccurrenceFrame] instance.
  O11yO11yOccurrenceFrame({
    this.absPath,
    this.colno,
    this.filename,
    this.function_,
    this.inApp,
    this.lineno,
    this.module,
  });
  /// AbsPath is the file's absolute path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? absPath;

  /// Colno is the column number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? colno;

  /// Filename is the file it is in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  /// Function is the function the frame is in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? function_;

  /// InApp marks a frame in the reporting application's own code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inApp;

  /// Lineno is the line number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lineno;

  /// Module is the module the function is in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? module;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yOccurrenceFrame &&
    other.absPath == absPath &&
    other.colno == colno &&
    other.filename == filename &&
    other.function_ == function_ &&
    other.inApp == inApp &&
    other.lineno == lineno &&
    other.module == module;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absPath == null ? 0 : absPath!.hashCode) +
    (colno == null ? 0 : colno!.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (function_ == null ? 0 : function_!.hashCode) +
    (inApp == null ? 0 : inApp!.hashCode) +
    (lineno == null ? 0 : lineno!.hashCode) +
    (module == null ? 0 : module!.hashCode);

  @override
  String toString() => 'O11yO11yOccurrenceFrame[absPath=$absPath, colno=$colno, filename=$filename, function_=$function_, inApp=$inApp, lineno=$lineno, module=$module]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.absPath != null) {
      json[r'absPath'] = this.absPath;
    } else {
      json[r'absPath'] = null;
    }
    if (this.colno != null) {
      json[r'colno'] = this.colno;
    } else {
      json[r'colno'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.function_ != null) {
      json[r'function'] = this.function_;
    } else {
      json[r'function'] = null;
    }
    if (this.inApp != null) {
      json[r'inApp'] = this.inApp;
    } else {
      json[r'inApp'] = null;
    }
    if (this.lineno != null) {
      json[r'lineno'] = this.lineno;
    } else {
      json[r'lineno'] = null;
    }
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yOccurrenceFrame] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yOccurrenceFrame? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yOccurrenceFrame[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yOccurrenceFrame[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yOccurrenceFrame(
        absPath: mapValueOfType<String>(json, r'absPath'),
        colno: mapValueOfType<int>(json, r'colno'),
        filename: mapValueOfType<String>(json, r'filename'),
        function_: mapValueOfType<String>(json, r'function'),
        inApp: mapValueOfType<bool>(json, r'inApp'),
        lineno: mapValueOfType<int>(json, r'lineno'),
        module: mapValueOfType<String>(json, r'module'),
      );
    }
    return null;
  }

  static List<O11yO11yOccurrenceFrame> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yOccurrenceFrame>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yOccurrenceFrame.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yOccurrenceFrame> mapFromJson(dynamic json) {
    final map = <String, O11yO11yOccurrenceFrame>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yOccurrenceFrame.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yOccurrenceFrame-objects as value to a dart map
  static Map<String, List<O11yO11yOccurrenceFrame>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yOccurrenceFrame>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yOccurrenceFrame.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

