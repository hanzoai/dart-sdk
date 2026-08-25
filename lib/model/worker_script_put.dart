//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WorkerScriptPut {
  /// Returns a new [WorkerScriptPut] instance.
  WorkerScriptPut({
    this.bindings,
    this.compatibilityDate,
    this.compatibilityFlags = const [],
    this.mainModule,
    this.script,
  });
  Object? bindings;

  /// CompatibilityDate pins which Workers runtime behaviour the script runs under, as a plain calendar date (\"2024-01-01\"). Absent leaves the account's own default in force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? compatibilityDate;

  /// CompatibilityFlags turn individual runtime behaviours on or off around that date (\"nodejs_compat\"), in Cloudflare's own flag vocabulary. Absent means the date alone decides.
  List<String> compatibilityFlags;

  /// MainModule is the module file the runtime starts at. Absent means \"worker.js\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mainModule;

  /// Script means two things on this route, and the document says so in both places it appears: the PATH segment names the Worker to publish, and the BODY field carries that Worker's ES-module source — the code itself, never a name or a URL. A blank or absent source is refused; there is no empty Worker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? script;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkerScriptPut &&
    other.bindings == bindings &&
    other.compatibilityDate == compatibilityDate &&
    _deepEquality.equals(other.compatibilityFlags, compatibilityFlags) &&
    other.mainModule == mainModule &&
    other.script == script;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bindings == null ? 0 : bindings!.hashCode) +
    (compatibilityDate == null ? 0 : compatibilityDate!.hashCode) +
    (compatibilityFlags.hashCode) +
    (mainModule == null ? 0 : mainModule!.hashCode) +
    (script == null ? 0 : script!.hashCode);

  @override
  String toString() => 'WorkerScriptPut[bindings=$bindings, compatibilityDate=$compatibilityDate, compatibilityFlags=$compatibilityFlags, mainModule=$mainModule, script=$script]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bindings != null) {
      json[r'bindings'] = this.bindings;
    } else {
      json[r'bindings'] = null;
    }
    if (this.compatibilityDate != null) {
      json[r'compatibilityDate'] = this.compatibilityDate;
    } else {
      json[r'compatibilityDate'] = null;
    }
      json[r'compatibilityFlags'] = this.compatibilityFlags;
    if (this.mainModule != null) {
      json[r'mainModule'] = this.mainModule;
    } else {
      json[r'mainModule'] = null;
    }
    if (this.script != null) {
      json[r'script'] = this.script;
    } else {
      json[r'script'] = null;
    }
    return json;
  }

  /// Returns a new [WorkerScriptPut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkerScriptPut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkerScriptPut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkerScriptPut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkerScriptPut(
        bindings: mapValueOfType<Object>(json, r'bindings'),
        compatibilityDate: mapValueOfType<String>(json, r'compatibilityDate'),
        compatibilityFlags: json[r'compatibilityFlags'] is Iterable
            ? (json[r'compatibilityFlags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mainModule: mapValueOfType<String>(json, r'mainModule'),
        script: mapValueOfType<String>(json, r'script'),
      );
    }
    return null;
  }

  static List<WorkerScriptPut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkerScriptPut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkerScriptPut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkerScriptPut> mapFromJson(dynamic json) {
    final map = <String, WorkerScriptPut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkerScriptPut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkerScriptPut-objects as value to a dart map
  static Map<String, List<WorkerScriptPut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkerScriptPut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkerScriptPut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

