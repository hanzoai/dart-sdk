//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CsrfResp {
  /// Returns a new [CsrfResp] instance.
  CsrfResp({
    this.csrfToken,
    this.expiresIn,
  });

  /// Token is the value to send back in the X-CSRF-Token header. It is bound to the caller's identity, so it authorizes writes as them and as nobody else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// ExpiresIn is the token's lifetime in seconds. Fetch a new one when it lapses; a write with an expired token is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CsrfResp &&
    other.csrfToken == csrfToken &&
    other.expiresIn == expiresIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode);

  @override
  String toString() => 'CsrfResp[csrfToken=$csrfToken, expiresIn=$expiresIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrfToken'] = this.csrfToken;
    } else {
      json[r'csrfToken'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expiresIn'] = this.expiresIn;
    } else {
      json[r'expiresIn'] = null;
    }
    return json;
  }

  /// Returns a new [CsrfResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CsrfResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CsrfResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CsrfResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CsrfResp(
        csrfToken: mapValueOfType<String>(json, r'csrfToken'),
        expiresIn: mapValueOfType<int>(json, r'expiresIn'),
      );
    }
    return null;
  }

  static List<CsrfResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CsrfResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CsrfResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CsrfResp> mapFromJson(dynamic json) {
    final map = <String, CsrfResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CsrfResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CsrfResp-objects as value to a dart map
  static Map<String, List<CsrfResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CsrfResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CsrfResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

