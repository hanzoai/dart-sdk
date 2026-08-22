//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ImageView {
  /// Returns a new [ImageView] instance.
  ImageView({
    this.repository,
    this.tag,
  });
  /// Repository is the image path without a tag (ghcr.io/acme/api). Required for source `image`, which runs it as-is. A git app's built image is NOT this: the build pushes to a path derived from the org and slug, and the deployment records that full ref.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repository;

  /// Tag is the tag to run: what the create declared, then RE-STAMPED on every transition to live with the tag that actually went live. So after a deploy it names what is running, not what was asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageView &&
    other.repository == repository &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (repository == null ? 0 : repository!.hashCode) +
    (tag == null ? 0 : tag!.hashCode);

  @override
  String toString() => 'ImageView[repository=$repository, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.repository != null) {
      json[r'repository'] = this.repository;
    } else {
      json[r'repository'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    return json;
  }

  /// Returns a new [ImageView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageView(
        repository: mapValueOfType<String>(json, r'repository'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<ImageView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageView> mapFromJson(dynamic json) {
    final map = <String, ImageView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageView-objects as value to a dart map
  static Map<String, List<ImageView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

