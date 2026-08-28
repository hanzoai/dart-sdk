//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiAudioResponseWordsInner {
  /// Returns a new [OpenaiAudioResponseWordsInner] instance.
  OpenaiAudioResponseWordsInner({
    this.end,
    this.start,
    this.word,
  });
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
  num? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? word;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiAudioResponseWordsInner &&
    other.end == end &&
    other.start == start &&
    other.word == word;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (word == null ? 0 : word!.hashCode);

  @override
  String toString() => 'OpenaiAudioResponseWordsInner[end=$end, start=$start, word=$word]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.word != null) {
      json[r'word'] = this.word;
    } else {
      json[r'word'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiAudioResponseWordsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiAudioResponseWordsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiAudioResponseWordsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiAudioResponseWordsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiAudioResponseWordsInner(
        end: num.parse('${json[r'end']}'),
        start: num.parse('${json[r'start']}'),
        word: mapValueOfType<String>(json, r'word'),
      );
    }
    return null;
  }

  static List<OpenaiAudioResponseWordsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiAudioResponseWordsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiAudioResponseWordsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiAudioResponseWordsInner> mapFromJson(dynamic json) {
    final map = <String, OpenaiAudioResponseWordsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiAudioResponseWordsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiAudioResponseWordsInner-objects as value to a dart map
  static Map<String, List<OpenaiAudioResponseWordsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiAudioResponseWordsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiAudioResponseWordsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

