//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ShareView {
  /// Returns a new [ShareView] instance.
  ShareView({
    this.backend,
    this.backendMode,
    this.createdAt,
    this.token,
    this.url,
  });
  /// Backend is the local endpoint the share proxies to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backend;

  /// BackendMode is how the tunnel serves the backend, e.g. proxy or web.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backendMode;

  /// CreatedAt is when the share was opened, unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Token is the share's own identifier, the leaf of its public URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// URL is the share's public address, rendered from the deployment's URL template.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShareView &&
    other.backend == backend &&
    other.backendMode == backendMode &&
    other.createdAt == createdAt &&
    other.token == token &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backend == null ? 0 : backend!.hashCode) +
    (backendMode == null ? 0 : backendMode!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ShareView[backend=$backend, backendMode=$backendMode, createdAt=$createdAt, token=$token, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backend != null) {
      json[r'backend'] = this.backend;
    } else {
      json[r'backend'] = null;
    }
    if (this.backendMode != null) {
      json[r'backendMode'] = this.backendMode;
    } else {
      json[r'backendMode'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ShareView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShareView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShareView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShareView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShareView(
        backend: mapValueOfType<String>(json, r'backend'),
        backendMode: mapValueOfType<String>(json, r'backendMode'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        token: mapValueOfType<String>(json, r'token'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ShareView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShareView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShareView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShareView> mapFromJson(dynamic json) {
    final map = <String, ShareView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShareView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShareView-objects as value to a dart map
  static Map<String, List<ShareView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShareView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShareView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

