//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustPage {
  /// Returns a new [TrustPage] instance.
  TrustPage({
    this.items = const [],
    this.name,
    this.nda,
    this.slug,
  });
  /// Items is everything the centre publishes: what can be read now, and what exists and is released on request.
  List<TrustItem> items;

  /// Name is the org's display name for its centre.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Nda is the text a party must accept to ask for the gated items, verbatim. Empty when the org asks for none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nda;

  /// Slug is the centre's public address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustPage &&
    _deepEquality.equals(other.items, items) &&
    other.name == name &&
    other.nda == nda &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nda == null ? 0 : nda!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'TrustPage[items=$items, name=$name, nda=$nda, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [TrustPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustPage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustPage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustPage(
        items: TrustItem.listFromJson(json[r'items']),
        name: mapValueOfType<String>(json, r'name'),
        nda: mapValueOfType<String>(json, r'nda'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<TrustPage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustPage> mapFromJson(dynamic json) {
    final map = <String, TrustPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustPage-objects as value to a dart map
  static Map<String, List<TrustPage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustPage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

