//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AskRequest {
  /// Returns a new [AskRequest] instance.
  AskRequest({
    this.followUps,
    this.language,
    this.maxQueries,
    this.maxSources,
    this.mode,
    this.model,
    this.q,
    this.question,
    this.sources = const [],
    this.stream,
    this.system,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? followUps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxQueries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? q;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? question;

  List<String> sources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stream;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? system;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AskRequest &&
    other.followUps == followUps &&
    other.language == language &&
    other.maxQueries == maxQueries &&
    other.maxSources == maxSources &&
    other.mode == mode &&
    other.model == model &&
    other.q == q &&
    other.question == question &&
    _deepEquality.equals(other.sources, sources) &&
    other.stream == stream &&
    other.system == system;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (followUps == null ? 0 : followUps!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (maxQueries == null ? 0 : maxQueries!.hashCode) +
    (maxSources == null ? 0 : maxSources!.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (q == null ? 0 : q!.hashCode) +
    (question == null ? 0 : question!.hashCode) +
    (sources.hashCode) +
    (stream == null ? 0 : stream!.hashCode) +
    (system == null ? 0 : system!.hashCode);

  @override
  String toString() => 'AskRequest[followUps=$followUps, language=$language, maxQueries=$maxQueries, maxSources=$maxSources, mode=$mode, model=$model, q=$q, question=$question, sources=$sources, stream=$stream, system=$system]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.followUps != null) {
      json[r'followUps'] = this.followUps;
    } else {
      json[r'followUps'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.maxQueries != null) {
      json[r'maxQueries'] = this.maxQueries;
    } else {
      json[r'maxQueries'] = null;
    }
    if (this.maxSources != null) {
      json[r'maxSources'] = this.maxSources;
    } else {
      json[r'maxSources'] = null;
    }
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.q != null) {
      json[r'q'] = this.q;
    } else {
      json[r'q'] = null;
    }
    if (this.question != null) {
      json[r'question'] = this.question;
    } else {
      json[r'question'] = null;
    }
      json[r'sources'] = this.sources;
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    if (this.system != null) {
      json[r'system'] = this.system;
    } else {
      json[r'system'] = null;
    }
    return json;
  }

  /// Returns a new [AskRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AskRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AskRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AskRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AskRequest(
        followUps: mapValueOfType<bool>(json, r'followUps'),
        language: mapValueOfType<String>(json, r'language'),
        maxQueries: mapValueOfType<int>(json, r'maxQueries'),
        maxSources: mapValueOfType<int>(json, r'maxSources'),
        mode: mapValueOfType<String>(json, r'mode'),
        model: mapValueOfType<String>(json, r'model'),
        q: mapValueOfType<String>(json, r'q'),
        question: mapValueOfType<String>(json, r'question'),
        sources: json[r'sources'] is Iterable
            ? (json[r'sources'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        stream: mapValueOfType<bool>(json, r'stream'),
        system: mapValueOfType<String>(json, r'system'),
      );
    }
    return null;
  }

  static List<AskRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AskRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AskRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AskRequest> mapFromJson(dynamic json) {
    final map = <String, AskRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AskRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AskRequest-objects as value to a dart map
  static Map<String, List<AskRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AskRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AskRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

