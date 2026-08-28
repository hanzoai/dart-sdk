//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiAudioResponseSegmentsInner {
  /// Returns a new [OpenaiAudioResponseSegmentsInner] instance.
  OpenaiAudioResponseSegmentsInner({
    this.avgLogprob,
    this.compressionRatio,
    this.end,
    this.id,
    this.noSpeechProb,
    this.seek,
    this.start,
    this.temperature,
    this.text,
    this.tokens = const [],
    this.transient,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgLogprob;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? compressionRatio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? noSpeechProb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seek;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? temperature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  List<int> tokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? transient;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiAudioResponseSegmentsInner &&
    other.avgLogprob == avgLogprob &&
    other.compressionRatio == compressionRatio &&
    other.end == end &&
    other.id == id &&
    other.noSpeechProb == noSpeechProb &&
    other.seek == seek &&
    other.start == start &&
    other.temperature == temperature &&
    other.text == text &&
    _deepEquality.equals(other.tokens, tokens) &&
    other.transient == transient;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgLogprob == null ? 0 : avgLogprob!.hashCode) +
    (compressionRatio == null ? 0 : compressionRatio!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (noSpeechProb == null ? 0 : noSpeechProb!.hashCode) +
    (seek == null ? 0 : seek!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (temperature == null ? 0 : temperature!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (tokens.hashCode) +
    (transient == null ? 0 : transient!.hashCode);

  @override
  String toString() => 'OpenaiAudioResponseSegmentsInner[avgLogprob=$avgLogprob, compressionRatio=$compressionRatio, end=$end, id=$id, noSpeechProb=$noSpeechProb, seek=$seek, start=$start, temperature=$temperature, text=$text, tokens=$tokens, transient=$transient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgLogprob != null) {
      json[r'avg_logprob'] = this.avgLogprob;
    } else {
      json[r'avg_logprob'] = null;
    }
    if (this.compressionRatio != null) {
      json[r'compression_ratio'] = this.compressionRatio;
    } else {
      json[r'compression_ratio'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.noSpeechProb != null) {
      json[r'no_speech_prob'] = this.noSpeechProb;
    } else {
      json[r'no_speech_prob'] = null;
    }
    if (this.seek != null) {
      json[r'seek'] = this.seek;
    } else {
      json[r'seek'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.temperature != null) {
      json[r'temperature'] = this.temperature;
    } else {
      json[r'temperature'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'tokens'] = this.tokens;
    if (this.transient != null) {
      json[r'transient'] = this.transient;
    } else {
      json[r'transient'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiAudioResponseSegmentsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiAudioResponseSegmentsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiAudioResponseSegmentsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiAudioResponseSegmentsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiAudioResponseSegmentsInner(
        avgLogprob: num.parse('${json[r'avg_logprob']}'),
        compressionRatio: num.parse('${json[r'compression_ratio']}'),
        end: num.parse('${json[r'end']}'),
        id: mapValueOfType<int>(json, r'id'),
        noSpeechProb: num.parse('${json[r'no_speech_prob']}'),
        seek: mapValueOfType<int>(json, r'seek'),
        start: num.parse('${json[r'start']}'),
        temperature: num.parse('${json[r'temperature']}'),
        text: mapValueOfType<String>(json, r'text'),
        tokens: json[r'tokens'] is Iterable
            ? (json[r'tokens'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        transient: mapValueOfType<bool>(json, r'transient'),
      );
    }
    return null;
  }

  static List<OpenaiAudioResponseSegmentsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiAudioResponseSegmentsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiAudioResponseSegmentsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiAudioResponseSegmentsInner> mapFromJson(dynamic json) {
    final map = <String, OpenaiAudioResponseSegmentsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiAudioResponseSegmentsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiAudioResponseSegmentsInner-objects as value to a dart map
  static Map<String, List<OpenaiAudioResponseSegmentsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiAudioResponseSegmentsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiAudioResponseSegmentsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

