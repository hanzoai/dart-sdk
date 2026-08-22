//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CurateReq {
  /// Returns a new [CurateReq] instance.
  CurateReq({
    this.featured,
    this.hidden,
    this.id,
    this.logo,
    this.official,
  });
  /// Featured puts the listing on the front of the shelf, or takes it off.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? featured;

  /// Hidden takes the listing off the org-visible shelf, or puts it back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  /// ID is the listing to curate, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Logo is the brand mark to render, an https URL. Empty clears ours and lets the next sync adopt the publisher's own icon again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logo;

  /// Official overrides the derivation: setting it makes this answer FINAL, so no later sync re-derives over it. That is the difference between a default and a decision — the derivation can only tell that a domain-verified publisher serves the endpoint, not that the product is theirs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? official;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CurateReq &&
    other.featured == featured &&
    other.hidden == hidden &&
    other.id == id &&
    other.logo == logo &&
    other.official == official;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (featured == null ? 0 : featured!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (official == null ? 0 : official!.hashCode);

  @override
  String toString() => 'CurateReq[featured=$featured, hidden=$hidden, id=$id, logo=$logo, official=$official]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.official != null) {
      json[r'official'] = this.official;
    } else {
      json[r'official'] = null;
    }
    return json;
  }

  /// Returns a new [CurateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CurateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CurateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CurateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CurateReq(
        featured: mapValueOfType<bool>(json, r'featured'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        id: mapValueOfType<String>(json, r'id'),
        logo: mapValueOfType<String>(json, r'logo'),
        official: mapValueOfType<bool>(json, r'official'),
      );
    }
    return null;
  }

  static List<CurateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CurateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CurateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CurateReq> mapFromJson(dynamic json) {
    final map = <String, CurateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CurateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CurateReq-objects as value to a dart map
  static Map<String, List<CurateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CurateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CurateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

