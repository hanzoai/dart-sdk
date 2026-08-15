//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPagerdutyImage {
  /// Returns a new [O11yPagerdutyImage] instance.
  O11yPagerdutyImage({
    this.alt,
    this.href,
    this.src,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? src;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPagerdutyImage &&
    other.alt == alt &&
    other.href == href &&
    other.src == src;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alt == null ? 0 : alt!.hashCode) +
    (href == null ? 0 : href!.hashCode) +
    (src == null ? 0 : src!.hashCode);

  @override
  String toString() => 'O11yPagerdutyImage[alt=$alt, href=$href, src=$src]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alt != null) {
      json[r'alt'] = this.alt;
    } else {
      json[r'alt'] = null;
    }
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
    }
    if (this.src != null) {
      json[r'src'] = this.src;
    } else {
      json[r'src'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPagerdutyImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPagerdutyImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPagerdutyImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPagerdutyImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPagerdutyImage(
        alt: mapValueOfType<String>(json, r'alt'),
        href: mapValueOfType<String>(json, r'href'),
        src: mapValueOfType<String>(json, r'src'),
      );
    }
    return null;
  }

  static List<O11yPagerdutyImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPagerdutyImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPagerdutyImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPagerdutyImage> mapFromJson(dynamic json) {
    final map = <String, O11yPagerdutyImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPagerdutyImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPagerdutyImage-objects as value to a dart map
  static Map<String, List<O11yPagerdutyImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPagerdutyImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPagerdutyImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

