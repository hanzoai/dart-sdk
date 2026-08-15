//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamWorkspacesInput {
  /// Returns a new [IamWorkspacesInput] instance.
  IamWorkspacesInput({
    this.bucket,
    this.createdTime,
    this.description,
    this.displayName,
    this.isDefault,
    this.metadata,
    this.name,
    this.organization,
    this.owner,
    this.tags = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamWorkspacesInput &&
    other.bucket == bucket &&
    other.createdTime == createdTime &&
    other.description == description &&
    other.displayName == displayName &&
    other.isDefault == isDefault &&
    other.metadata == metadata &&
    other.name == name &&
    other.organization == organization &&
    other.owner == owner &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket == null ? 0 : bucket!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'IamWorkspacesInput[bucket=$bucket, createdTime=$createdTime, description=$description, displayName=$displayName, isDefault=$isDefault, metadata=$metadata, name=$name, organization=$organization, owner=$owner, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [IamWorkspacesInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamWorkspacesInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamWorkspacesInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamWorkspacesInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamWorkspacesInput(
        bucket: mapValueOfType<String>(json, r'bucket'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        metadata: mapValueOfType<String>(json, r'metadata'),
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        owner: mapValueOfType<String>(json, r'owner'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IamWorkspacesInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamWorkspacesInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamWorkspacesInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamWorkspacesInput> mapFromJson(dynamic json) {
    final map = <String, IamWorkspacesInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamWorkspacesInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamWorkspacesInput-objects as value to a dart map
  static Map<String, List<IamWorkspacesInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamWorkspacesInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamWorkspacesInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

