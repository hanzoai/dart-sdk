//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustDesk {
  /// Returns a new [TrustDesk] instance.
  TrustDesk({
    this.grants = const [],
    this.items = const [],
    this.name,
    this.nda,
    this.published,
    this.requests = const [],
    this.slug,
  });
  /// Grants is every grant that has been made, newest first.
  List<TrustGrantView> grants;

  /// Items is everything the org holds, both tiers, retired included.
  List<TrustItemView> items;

  /// Name is the centre's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Nda is the text a party must accept before asking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nda;

  /// Published is whether the centre answers at its public address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

  /// Requests is every ask, newest first, open ones included.
  List<TrustAskView> requests;

  /// Slug is the public address, empty until the centre is published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustDesk &&
    _deepEquality.equals(other.grants, grants) &&
    _deepEquality.equals(other.items, items) &&
    other.name == name &&
    other.nda == nda &&
    other.published == published &&
    _deepEquality.equals(other.requests, requests) &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (grants.hashCode) +
    (items.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nda == null ? 0 : nda!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (requests.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'TrustDesk[grants=$grants, items=$items, name=$name, nda=$nda, published=$published, requests=$requests, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'grants'] = this.grants;
      json[r'items'] = this.items;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nda != null) {
      json[r'nda'] = this.nda;
    } else {
      json[r'nda'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
      json[r'requests'] = this.requests;
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [TrustDesk] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustDesk? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustDesk[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustDesk[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustDesk(
        grants: TrustGrantView.listFromJson(json[r'grants']),
        items: TrustItemView.listFromJson(json[r'items']),
        name: mapValueOfType<String>(json, r'name'),
        nda: mapValueOfType<String>(json, r'nda'),
        published: mapValueOfType<bool>(json, r'published'),
        requests: TrustAskView.listFromJson(json[r'requests']),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<TrustDesk> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustDesk>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustDesk.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustDesk> mapFromJson(dynamic json) {
    final map = <String, TrustDesk>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustDesk.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustDesk-objects as value to a dart map
  static Map<String, List<TrustDesk>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustDesk>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustDesk.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

