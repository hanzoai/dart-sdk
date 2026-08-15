//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GenerateRequest {
  /// Returns a new [GenerateRequest] instance.
  GenerateRequest({
    this.data = const {},
    this.templateId,
  });

  /// Data supplies every merge field the template declares, keyed by field key. Every declared field is REQUIRED: a missing one is refused with 400 rather than rendered as a blank into a contract.
  Map<String, String> data;

  /// TemplateID is the template to render. Required; resolved for the caller's org, so an override wins over the built-in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateRequest &&
    _deepEquality.equals(other.data, data) &&
    other.templateId == templateId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode);

  @override
  String toString() => 'GenerateRequest[data=$data, templateId=$templateId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.templateId != null) {
      json[r'templateId'] = this.templateId;
    } else {
      json[r'templateId'] = null;
    }
    return json;
  }

  /// Returns a new [GenerateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateRequest(
        data: mapCastOfType<String, String>(json, r'data') ?? const {},
        templateId: mapValueOfType<String>(json, r'templateId'),
      );
    }
    return null;
  }

  static List<GenerateRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateRequest> mapFromJson(dynamic json) {
    final map = <String, GenerateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateRequest-objects as value to a dart map
  static Map<String, List<GenerateRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

