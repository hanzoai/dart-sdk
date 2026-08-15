//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AskResponse {
  /// Returns a new [AskResponse] instance.
  AskResponse({
    this.answer,
    this.figures = const [],
    this.followups = const [],
    this.sources = const [],
  });

  /// Answer is one or two sentences answering the question, every number in it taken from Figures.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? answer;

  /// Figures are the grounded numbers the answer states, each already formatted.
  List<Figure> figures;

  /// Followups are sharper questions to ask next, chosen from the same intent.
  List<String> followups;

  /// Sources name the books reports the figures were computed from — \"pnl\", \"position\", \"trial\".
  List<String> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AskResponse &&
    other.answer == answer &&
    _deepEquality.equals(other.figures, figures) &&
    _deepEquality.equals(other.followups, followups) &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (answer == null ? 0 : answer!.hashCode) +
    (figures.hashCode) +
    (followups.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'AskResponse[answer=$answer, figures=$figures, followups=$followups, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.answer != null) {
      json[r'answer'] = this.answer;
    } else {
      json[r'answer'] = null;
    }
      json[r'figures'] = this.figures;
      json[r'followups'] = this.followups;
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [AskResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AskResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AskResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AskResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AskResponse(
        answer: mapValueOfType<String>(json, r'answer'),
        figures: Figure.listFromJson(json[r'figures']),
        followups: json[r'followups'] is Iterable
            ? (json[r'followups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sources: json[r'sources'] is Iterable
            ? (json[r'sources'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AskResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AskResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AskResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AskResponse> mapFromJson(dynamic json) {
    final map = <String, AskResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AskResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AskResponse-objects as value to a dart map
  static Map<String, List<AskResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AskResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AskResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

