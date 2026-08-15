//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Principle {
  /// Returns a new [Principle] instance.
  Principle({
    this.change,
    this.domain,
    this.hexagram,
    this.n,
    this.name,
    this.principle,
    this.slug,
    this.sunTzu,
  });

  /// the Book of Changes reading
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? change;

  /// the growth / go-to-market domain it governs
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// the I-Ching hexagram (pinyin + gloss)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hexagram;

  /// 1..64, the hexagram number + canonical order
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n;

  /// the principle's short name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// the actionable growth law
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? principle;

  /// stable identifier a tactic files under
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// the Art of War teaching
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sunTzu;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Principle &&
    other.change == change &&
    other.domain == domain &&
    other.hexagram == hexagram &&
    other.n == n &&
    other.name == name &&
    other.principle == principle &&
    other.slug == slug &&
    other.sunTzu == sunTzu;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (change == null ? 0 : change!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (hexagram == null ? 0 : hexagram!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (principle == null ? 0 : principle!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (sunTzu == null ? 0 : sunTzu!.hashCode);

  @override
  String toString() => 'Principle[change=$change, domain=$domain, hexagram=$hexagram, n=$n, name=$name, principle=$principle, slug=$slug, sunTzu=$sunTzu]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.change != null) {
      json[r'change'] = this.change;
    } else {
      json[r'change'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.hexagram != null) {
      json[r'hexagram'] = this.hexagram;
    } else {
      json[r'hexagram'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.principle != null) {
      json[r'principle'] = this.principle;
    } else {
      json[r'principle'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.sunTzu != null) {
      json[r'sunTzu'] = this.sunTzu;
    } else {
      json[r'sunTzu'] = null;
    }
    return json;
  }

  /// Returns a new [Principle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Principle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Principle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Principle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Principle(
        change: mapValueOfType<String>(json, r'change'),
        domain: mapValueOfType<String>(json, r'domain'),
        hexagram: mapValueOfType<String>(json, r'hexagram'),
        n: mapValueOfType<int>(json, r'n'),
        name: mapValueOfType<String>(json, r'name'),
        principle: mapValueOfType<String>(json, r'principle'),
        slug: mapValueOfType<String>(json, r'slug'),
        sunTzu: mapValueOfType<String>(json, r'sunTzu'),
      );
    }
    return null;
  }

  static List<Principle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Principle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Principle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Principle> mapFromJson(dynamic json) {
    final map = <String, Principle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Principle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Principle-objects as value to a dart map
  static Map<String, List<Principle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Principle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Principle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

