//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamConfig {
  /// Returns a new [IamConfig] instance.
  IamConfig({
    this.authenticationSchemes = const [],
    this.bulk,
    this.changePassword,
    this.documentationUri,
    this.etag,
    this.filter,
    this.patch_,
    this.schemas = const [],
    this.sort,
  });
  List<IamScheme> authenticationSchemes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamBulk? bulk;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamToggle? changePassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentationUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamToggle? etag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamFilter? filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamToggle? patch_;

  List<String> schemas;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IamToggle? sort;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamConfig &&
    _deepEquality.equals(other.authenticationSchemes, authenticationSchemes) &&
    other.bulk == bulk &&
    other.changePassword == changePassword &&
    other.documentationUri == documentationUri &&
    other.etag == etag &&
    other.filter == filter &&
    other.patch_ == patch_ &&
    _deepEquality.equals(other.schemas, schemas) &&
    other.sort == sort;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authenticationSchemes.hashCode) +
    (bulk == null ? 0 : bulk!.hashCode) +
    (changePassword == null ? 0 : changePassword!.hashCode) +
    (documentationUri == null ? 0 : documentationUri!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (patch_ == null ? 0 : patch_!.hashCode) +
    (schemas.hashCode) +
    (sort == null ? 0 : sort!.hashCode);

  @override
  String toString() => 'IamConfig[authenticationSchemes=$authenticationSchemes, bulk=$bulk, changePassword=$changePassword, documentationUri=$documentationUri, etag=$etag, filter=$filter, patch_=$patch_, schemas=$schemas, sort=$sort]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'authenticationSchemes'] = this.authenticationSchemes;
    if (this.bulk != null) {
      json[r'bulk'] = this.bulk;
    } else {
      json[r'bulk'] = null;
    }
    if (this.changePassword != null) {
      json[r'changePassword'] = this.changePassword;
    } else {
      json[r'changePassword'] = null;
    }
    if (this.documentationUri != null) {
      json[r'documentationUri'] = this.documentationUri;
    } else {
      json[r'documentationUri'] = null;
    }
    if (this.etag != null) {
      json[r'etag'] = this.etag;
    } else {
      json[r'etag'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.patch_ != null) {
      json[r'patch'] = this.patch_;
    } else {
      json[r'patch'] = null;
    }
      json[r'schemas'] = this.schemas;
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    return json;
  }

  /// Returns a new [IamConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamConfig(
        authenticationSchemes: IamScheme.listFromJson(json[r'authenticationSchemes']),
        bulk: IamBulk.fromJson(json[r'bulk']),
        changePassword: IamToggle.fromJson(json[r'changePassword']),
        documentationUri: mapValueOfType<String>(json, r'documentationUri'),
        etag: IamToggle.fromJson(json[r'etag']),
        filter: IamFilter.fromJson(json[r'filter']),
        patch_: IamToggle.fromJson(json[r'patch']),
        schemas: json[r'schemas'] is Iterable
            ? (json[r'schemas'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sort: IamToggle.fromJson(json[r'sort']),
      );
    }
    return null;
  }

  static List<IamConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamConfig> mapFromJson(dynamic json) {
    final map = <String, IamConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamConfig-objects as value to a dart map
  static Map<String, List<IamConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

