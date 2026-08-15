//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yIntegration {
  /// Returns a new [O11yIntegration] instance.
  O11yIntegration({
    this.assets,
    this.author,
    this.categories = const [],
    this.configuration = const [],
    this.connectionTests,
    this.dataCollected,
    this.description,
    this.icon,
    this.id,
    this.installation,
    this.overview,
    this.title,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yIntegrationAssets? assets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yIntegrationAuthor? author;

  List<String> categories;

  List<O11yIntegrationConfigStep> configuration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yIntegrationConnectionTests? connectionTests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yDataCollectedForIntegration? dataCollected;

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
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yInstalledIntegration? installation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? overview;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yIntegration &&
    other.assets == assets &&
    other.author == author &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.configuration, configuration) &&
    other.connectionTests == connectionTests &&
    other.dataCollected == dataCollected &&
    other.description == description &&
    other.icon == icon &&
    other.id == id &&
    other.installation == installation &&
    other.overview == overview &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assets == null ? 0 : assets!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (categories.hashCode) +
    (configuration.hashCode) +
    (connectionTests == null ? 0 : connectionTests!.hashCode) +
    (dataCollected == null ? 0 : dataCollected!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (installation == null ? 0 : installation!.hashCode) +
    (overview == null ? 0 : overview!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'O11yIntegration[assets=$assets, author=$author, categories=$categories, configuration=$configuration, connectionTests=$connectionTests, dataCollected=$dataCollected, description=$description, icon=$icon, id=$id, installation=$installation, overview=$overview, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assets != null) {
      json[r'assets'] = this.assets;
    } else {
      json[r'assets'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'configuration'] = this.configuration;
    if (this.connectionTests != null) {
      json[r'connection_tests'] = this.connectionTests;
    } else {
      json[r'connection_tests'] = null;
    }
    if (this.dataCollected != null) {
      json[r'data_collected'] = this.dataCollected;
    } else {
      json[r'data_collected'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.installation != null) {
      json[r'installation'] = this.installation;
    } else {
      json[r'installation'] = null;
    }
    if (this.overview != null) {
      json[r'overview'] = this.overview;
    } else {
      json[r'overview'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [O11yIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yIntegration(
        assets: O11yIntegrationAssets.fromJson(json[r'assets']),
        author: O11yIntegrationAuthor.fromJson(json[r'author']),
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        configuration: O11yIntegrationConfigStep.listFromJson(json[r'configuration']),
        connectionTests: O11yIntegrationConnectionTests.fromJson(json[r'connection_tests']),
        dataCollected: O11yDataCollectedForIntegration.fromJson(json[r'data_collected']),
        description: mapValueOfType<String>(json, r'description'),
        icon: mapValueOfType<String>(json, r'icon'),
        id: mapValueOfType<String>(json, r'id'),
        installation: O11yInstalledIntegration.fromJson(json[r'installation']),
        overview: mapValueOfType<String>(json, r'overview'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<O11yIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yIntegration> mapFromJson(dynamic json) {
    final map = <String, O11yIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yIntegration-objects as value to a dart map
  static Map<String, List<O11yIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

