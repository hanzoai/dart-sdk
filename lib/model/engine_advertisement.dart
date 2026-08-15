//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EngineAdvertisement {
  /// Returns a new [EngineAdvertisement] instance.
  EngineAdvertisement({
    this.apis = const [],
    this.models = const [],
    this.status,
    this.url,
  });

  /// [\"openai\",\"anthropic\"]
  List<String> apis;

  /// ids from the node's GET /v1/models
  List<String> models;

  /// \"ready\" | \"unreachable\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EngineAdvertisement &&
    _deepEquality.equals(other.apis, apis) &&
    _deepEquality.equals(other.models, models) &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apis.hashCode) +
    (models.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'EngineAdvertisement[apis=$apis, models=$models, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apis'] = this.apis;
      json[r'models'] = this.models;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [EngineAdvertisement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EngineAdvertisement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EngineAdvertisement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EngineAdvertisement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EngineAdvertisement(
        apis: json[r'apis'] is Iterable
            ? (json[r'apis'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<EngineAdvertisement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EngineAdvertisement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EngineAdvertisement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EngineAdvertisement> mapFromJson(dynamic json) {
    final map = <String, EngineAdvertisement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EngineAdvertisement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EngineAdvertisement-objects as value to a dart map
  static Map<String, List<EngineAdvertisement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EngineAdvertisement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EngineAdvertisement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

