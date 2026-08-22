//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MirrorTargetReq {
  /// Returns a new [MirrorTargetReq] instance.
  MirrorTargetReq({
    this.host,
    this.name,
    this.url,
  });
  /// Host is an optional assertion of the target's hostname. The authoritative host is the one in URL; a value that disagrees with it is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Name is the repo whose advanced refs are pushed downstream, from the :name path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// URL is the downstream https git remote. Must be https to an allowlisted host (github.com / gitlab.com); any embedded credentials are stripped. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MirrorTargetReq &&
    other.host == host &&
    other.name == name &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'MirrorTargetReq[host=$host, name=$name, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [MirrorTargetReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MirrorTargetReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MirrorTargetReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MirrorTargetReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MirrorTargetReq(
        host: mapValueOfType<String>(json, r'host'),
        name: mapValueOfType<String>(json, r'name'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<MirrorTargetReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MirrorTargetReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MirrorTargetReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MirrorTargetReq> mapFromJson(dynamic json) {
    final map = <String, MirrorTargetReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MirrorTargetReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MirrorTargetReq-objects as value to a dart map
  static Map<String, List<MirrorTargetReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MirrorTargetReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MirrorTargetReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

