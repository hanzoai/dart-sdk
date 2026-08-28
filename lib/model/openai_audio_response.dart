//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiAudioResponse {
  /// Returns a new [OpenaiAudioResponse] instance.
  OpenaiAudioResponse({
    this.duration,
    this.language,
    this.segments = const [],
    this.task,
    this.text,
    this.words = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  List<OpenaiAudioResponseSegmentsInner> segments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? task;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  List<OpenaiAudioResponseWordsInner> words;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiAudioResponse &&
    other.duration == duration &&
    other.language == language &&
    _deepEquality.equals(other.segments, segments) &&
    other.task == task &&
    other.text == text &&
    _deepEquality.equals(other.words, words);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duration == null ? 0 : duration!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (segments.hashCode) +
    (task == null ? 0 : task!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (words.hashCode);

  @override
  String toString() => 'OpenaiAudioResponse[duration=$duration, language=$language, segments=$segments, task=$task, text=$text, words=$words]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
      json[r'segments'] = this.segments;
    if (this.task != null) {
      json[r'task'] = this.task;
    } else {
      json[r'task'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'words'] = this.words;
    return json;
  }

  /// Returns a new [OpenaiAudioResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiAudioResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiAudioResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiAudioResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiAudioResponse(
        duration: num.parse('${json[r'duration']}'),
        language: mapValueOfType<String>(json, r'language'),
        segments: OpenaiAudioResponseSegmentsInner.listFromJson(json[r'segments']),
        task: mapValueOfType<String>(json, r'task'),
        text: mapValueOfType<String>(json, r'text'),
        words: OpenaiAudioResponseWordsInner.listFromJson(json[r'words']),
      );
    }
    return null;
  }

  static List<OpenaiAudioResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiAudioResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiAudioResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiAudioResponse> mapFromJson(dynamic json) {
    final map = <String, OpenaiAudioResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiAudioResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiAudioResponse-objects as value to a dart map
  static Map<String, List<OpenaiAudioResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiAudioResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiAudioResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

