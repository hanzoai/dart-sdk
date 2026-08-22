//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoSummary {
  /// Returns a new [ArgoSummary] instance.
  ArgoSummary({
    this.images = const [],
  });
  /// Images are the container images the application runs. One entry for an App CR, built from its spec.image as \"repository:tag\" — the bare repository when it declares no tag, and absent when it declares neither. Absent on a CD row, which tracks commits rather than images.
  List<String> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoSummary &&
    _deepEquality.equals(other.images, images);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (images.hashCode);

  @override
  String toString() => 'ArgoSummary[images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'images'] = this.images;
    return json;
  }

  /// Returns a new [ArgoSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoSummary(
        images: json[r'images'] is Iterable
            ? (json[r'images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ArgoSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoSummary> mapFromJson(dynamic json) {
    final map = <String, ArgoSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoSummary-objects as value to a dart map
  static Map<String, List<ArgoSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

