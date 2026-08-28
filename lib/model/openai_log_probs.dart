//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiLogProbs {
  /// Returns a new [OpenaiLogProbs] instance.
  OpenaiLogProbs({
    this.content = const [],
  });
  List<OpenaiLogProb> content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiLogProbs &&
    _deepEquality.equals(other.content, content);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode);

  @override
  String toString() => 'OpenaiLogProbs[content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    return json;
  }

  /// Returns a new [OpenaiLogProbs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiLogProbs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiLogProbs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiLogProbs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiLogProbs(
        content: OpenaiLogProb.listFromJson(json[r'content']),
      );
    }
    return null;
  }

  static List<OpenaiLogProbs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiLogProbs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiLogProbs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiLogProbs> mapFromJson(dynamic json) {
    final map = <String, OpenaiLogProbs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiLogProbs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiLogProbs-objects as value to a dart map
  static Map<String, List<OpenaiLogProbs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiLogProbs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiLogProbs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

