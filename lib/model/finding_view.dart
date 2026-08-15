//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FindingView {
  /// Returns a new [FindingView] instance.
  FindingView({
    this.createdAt,
    this.fingerprint,
    this.id,
    this.line,
    this.path,
    this.preview,
    this.ruleId,
    this.ruleName,
    this.scanId,
    this.severity,
  });

  /// CreatedAt is when the finding was recorded, in Unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Fingerprint is the SHA-256 of the raw secret. It is what makes the same secret recognisable across scans and after rotation without the secret ever being written down.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fingerprint;

  /// ID addresses this finding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Line is where in that file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  /// Path is the file the secret was found in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Preview is the secret MASKED — first and last characters kept, the middle starred — so a reviewer can recognise it without it being disclosed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preview;

  /// RuleID is the detection rule that fired.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleId;

  /// RuleName is that rule's human name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ruleName;

  /// ScanID is the scan that produced it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scanId;

  /// Severity ranks the finding: critical, high, medium or low.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FindingView &&
    other.createdAt == createdAt &&
    other.fingerprint == fingerprint &&
    other.id == id &&
    other.line == line &&
    other.path == path &&
    other.preview == preview &&
    other.ruleId == ruleId &&
    other.ruleName == ruleName &&
    other.scanId == scanId &&
    other.severity == severity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (fingerprint == null ? 0 : fingerprint!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (line == null ? 0 : line!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (preview == null ? 0 : preview!.hashCode) +
    (ruleId == null ? 0 : ruleId!.hashCode) +
    (ruleName == null ? 0 : ruleName!.hashCode) +
    (scanId == null ? 0 : scanId!.hashCode) +
    (severity == null ? 0 : severity!.hashCode);

  @override
  String toString() => 'FindingView[createdAt=$createdAt, fingerprint=$fingerprint, id=$id, line=$line, path=$path, preview=$preview, ruleId=$ruleId, ruleName=$ruleName, scanId=$scanId, severity=$severity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.fingerprint != null) {
      json[r'fingerprint'] = this.fingerprint;
    } else {
      json[r'fingerprint'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.line != null) {
      json[r'line'] = this.line;
    } else {
      json[r'line'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
    if (this.ruleId != null) {
      json[r'ruleId'] = this.ruleId;
    } else {
      json[r'ruleId'] = null;
    }
    if (this.ruleName != null) {
      json[r'ruleName'] = this.ruleName;
    } else {
      json[r'ruleName'] = null;
    }
    if (this.scanId != null) {
      json[r'scanId'] = this.scanId;
    } else {
      json[r'scanId'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    return json;
  }

  /// Returns a new [FindingView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FindingView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FindingView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FindingView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FindingView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        fingerprint: mapValueOfType<String>(json, r'fingerprint'),
        id: mapValueOfType<String>(json, r'id'),
        line: mapValueOfType<int>(json, r'line'),
        path: mapValueOfType<String>(json, r'path'),
        preview: mapValueOfType<String>(json, r'preview'),
        ruleId: mapValueOfType<String>(json, r'ruleId'),
        ruleName: mapValueOfType<String>(json, r'ruleName'),
        scanId: mapValueOfType<String>(json, r'scanId'),
        severity: mapValueOfType<String>(json, r'severity'),
      );
    }
    return null;
  }

  static List<FindingView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FindingView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FindingView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FindingView> mapFromJson(dynamic json) {
    final map = <String, FindingView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FindingView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FindingView-objects as value to a dart map
  static Map<String, List<FindingView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FindingView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FindingView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

