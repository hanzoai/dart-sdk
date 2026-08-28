//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiImageResponseDataInner {
  /// Returns a new [OpenaiImageResponseDataInner] instance.
  OpenaiImageResponseDataInner({
    this.b64Json,
    this.revisedPrompt,
    this.url,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? b64Json;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revisedPrompt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiImageResponseDataInner &&
    other.b64Json == b64Json &&
    other.revisedPrompt == revisedPrompt &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (b64Json == null ? 0 : b64Json!.hashCode) +
    (revisedPrompt == null ? 0 : revisedPrompt!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'OpenaiImageResponseDataInner[b64Json=$b64Json, revisedPrompt=$revisedPrompt, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.b64Json != null) {
      json[r'b64_json'] = this.b64Json;
    } else {
      json[r'b64_json'] = null;
    }
    if (this.revisedPrompt != null) {
      json[r'revised_prompt'] = this.revisedPrompt;
    } else {
      json[r'revised_prompt'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiImageResponseDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiImageResponseDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiImageResponseDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiImageResponseDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiImageResponseDataInner(
        b64Json: mapValueOfType<String>(json, r'b64_json'),
        revisedPrompt: mapValueOfType<String>(json, r'revised_prompt'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<OpenaiImageResponseDataInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiImageResponseDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiImageResponseDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiImageResponseDataInner> mapFromJson(dynamic json) {
    final map = <String, OpenaiImageResponseDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiImageResponseDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiImageResponseDataInner-objects as value to a dart map
  static Map<String, List<OpenaiImageResponseDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiImageResponseDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiImageResponseDataInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

