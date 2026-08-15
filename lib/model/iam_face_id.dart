//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamFaceId {
  /// Returns a new [IamFaceId] instance.
  IamFaceId({
    this.faceIdData = const [],
    this.imageUrl,
    this.name,
  });

  List<num> faceIdData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamFaceId &&
    _deepEquality.equals(other.faceIdData, faceIdData) &&
    other.imageUrl == imageUrl &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (faceIdData.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'IamFaceId[faceIdData=$faceIdData, imageUrl=$imageUrl, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'faceIdData'] = this.faceIdData;
    if (this.imageUrl != null) {
      json[r'imageUrl'] = this.imageUrl;
    } else {
      json[r'imageUrl'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [IamFaceId] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamFaceId? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamFaceId[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamFaceId[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamFaceId(
        faceIdData: json[r'faceIdData'] is Iterable
            ? (json[r'faceIdData'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        imageUrl: mapValueOfType<String>(json, r'imageUrl'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<IamFaceId> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamFaceId>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamFaceId.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamFaceId> mapFromJson(dynamic json) {
    final map = <String, IamFaceId>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamFaceId.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamFaceId-objects as value to a dart map
  static Map<String, List<IamFaceId>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamFaceId>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamFaceId.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

