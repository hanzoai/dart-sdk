//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiEmbeddingResponse {
  /// Returns a new [OpenaiEmbeddingResponse] instance.
  OpenaiEmbeddingResponse({
    this.data = const [],
    this.model,
    this.object,
    this.usage,
  });
  List<OpenaiEmbedding> data;

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
  String? object;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiUsage? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiEmbeddingResponse &&
    _deepEquality.equals(other.data, data) &&
    other.model == model &&
    other.object == object &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'OpenaiEmbeddingResponse[data=$data, model=$model, object=$object, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiEmbeddingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiEmbeddingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiEmbeddingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiEmbeddingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiEmbeddingResponse(
        data: OpenaiEmbedding.listFromJson(json[r'data']),
        model: mapValueOfType<String>(json, r'model'),
        object: mapValueOfType<String>(json, r'object'),
        usage: OpenaiUsage.fromJson(json[r'usage']),
      );
    }
    return null;
  }

  static List<OpenaiEmbeddingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiEmbeddingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiEmbeddingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiEmbeddingResponse> mapFromJson(dynamic json) {
    final map = <String, OpenaiEmbeddingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiEmbeddingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiEmbeddingResponse-objects as value to a dart map
  static Map<String, List<OpenaiEmbeddingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiEmbeddingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiEmbeddingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

