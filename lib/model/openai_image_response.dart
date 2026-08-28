//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiImageResponse {
  /// Returns a new [OpenaiImageResponse] instance.
  OpenaiImageResponse({
    this.created,
    this.data = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  List<OpenaiImageResponseDataInner> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiImageResponse &&
    other.created == created &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'OpenaiImageResponse[created=$created, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [OpenaiImageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiImageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiImageResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiImageResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiImageResponse(
        created: mapValueOfType<int>(json, r'created'),
        data: OpenaiImageResponseDataInner.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<OpenaiImageResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiImageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiImageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiImageResponse> mapFromJson(dynamic json) {
    final map = <String, OpenaiImageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiImageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiImageResponse-objects as value to a dart map
  static Map<String, List<OpenaiImageResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiImageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiImageResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

