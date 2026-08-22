//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustSettings {
  /// Returns a new [TrustSettings] instance.
  TrustSettings({
    this.name,
    this.nda,
    this.publish,
    this.slug,
  });
  /// Name is the centre's display name. Required to publish.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Nda is the text a party must accept before asking for a document. Optional; empty asks for no acceptance. The text in force is copied onto each request as it is accepted, so editing it never changes what anyone already agreed to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nda;

  /// Publish makes the centre answer at its public address. False withdraws it: the address stops answering while every item, grant and record stays exactly as it was, so withdrawing is reversible and loses nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publish;

  /// Slug is the public address to answer at — a lowercase label of letters, digits and hyphens. Required to publish, unique across the deployment, and one org holds one: publishing under a new address MOVES the centre rather than leaving the old one answering.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustSettings &&
    other.name == name &&
    other.nda == nda &&
    other.publish == publish &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (nda == null ? 0 : nda!.hashCode) +
    (publish == null ? 0 : publish!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'TrustSettings[name=$name, nda=$nda, publish=$publish, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.publish != null) {
      json[r'publish'] = this.publish;
    } else {
      json[r'publish'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [TrustSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustSettings(
        name: mapValueOfType<String>(json, r'name'),
        nda: mapValueOfType<String>(json, r'nda'),
        publish: mapValueOfType<bool>(json, r'publish'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<TrustSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustSettings> mapFromJson(dynamic json) {
    final map = <String, TrustSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustSettings-objects as value to a dart map
  static Map<String, List<TrustSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

