//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PresignResponse {
  /// Returns a new [PresignResponse] instance.
  PresignResponse({
    this.expiresIn,
    this.key,
    this.method,
    this.url,
  });
  /// seconds until the URL expires
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  /// Key is the object key the URL was signed for, relative to the bucket root and path-cleaned — so it is what the store will actually read or write, which is not always the string the caller sent. The signature covers this one bucket and this one key: a URL minted here reaches nothing else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// \"PUT\" (upload) or \"GET\" (download)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// presigned URL the browser follows directly
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PresignResponse &&
    other.expiresIn == expiresIn &&
    other.key == key &&
    other.method == method &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'PresignResponse[expiresIn=$expiresIn, key=$key, method=$method, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [PresignResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PresignResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PresignResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PresignResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PresignResponse(
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
        key: mapValueOfType<String>(json, r'key'),
        method: mapValueOfType<String>(json, r'method'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<PresignResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PresignResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PresignResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PresignResponse> mapFromJson(dynamic json) {
    final map = <String, PresignResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PresignResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PresignResponse-objects as value to a dart map
  static Map<String, List<PresignResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PresignResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PresignResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

