//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yService {
  /// Returns a new [O11yService] instance.
  O11yService({
    this.assets,
    this.cloudIntegrationService,
    this.dataCollected,
    this.icon,
    this.id,
    this.overview,
    this.supportedSignals,
    this.title,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yServiceAssets? assets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yCloudIntegrationService? cloudIntegrationService;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yDataCollected? dataCollected;

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

  /// markdown
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
  O11ySupportedSignals? supportedSignals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yService &&
    other.assets == assets &&
    other.cloudIntegrationService == cloudIntegrationService &&
    other.dataCollected == dataCollected &&
    other.icon == icon &&
    other.id == id &&
    other.overview == overview &&
    other.supportedSignals == supportedSignals &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assets == null ? 0 : assets!.hashCode) +
    (cloudIntegrationService == null ? 0 : cloudIntegrationService!.hashCode) +
    (dataCollected == null ? 0 : dataCollected!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (overview == null ? 0 : overview!.hashCode) +
    (supportedSignals == null ? 0 : supportedSignals!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'O11yService[assets=$assets, cloudIntegrationService=$cloudIntegrationService, dataCollected=$dataCollected, icon=$icon, id=$id, overview=$overview, supportedSignals=$supportedSignals, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assets != null) {
      json[r'assets'] = this.assets;
    } else {
      json[r'assets'] = null;
    }
    if (this.cloudIntegrationService != null) {
      json[r'cloudIntegrationService'] = this.cloudIntegrationService;
    } else {
      json[r'cloudIntegrationService'] = null;
    }
    if (this.dataCollected != null) {
      json[r'dataCollected'] = this.dataCollected;
    } else {
      json[r'dataCollected'] = null;
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
    if (this.overview != null) {
      json[r'overview'] = this.overview;
    } else {
      json[r'overview'] = null;
    }
    if (this.supportedSignals != null) {
      json[r'supportedSignals'] = this.supportedSignals;
    } else {
      json[r'supportedSignals'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [O11yService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yService(
        assets: O11yServiceAssets.fromJson(json[r'assets']),
        cloudIntegrationService: O11yCloudIntegrationService.fromJson(json[r'cloudIntegrationService']),
        dataCollected: O11yDataCollected.fromJson(json[r'dataCollected']),
        icon: mapValueOfType<String>(json, r'icon'),
        id: mapValueOfType<String>(json, r'id'),
        overview: mapValueOfType<String>(json, r'overview'),
        supportedSignals: O11ySupportedSignals.fromJson(json[r'supportedSignals']),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<O11yService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yService> mapFromJson(dynamic json) {
    final map = <String, O11yService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yService-objects as value to a dart map
  static Map<String, List<O11yService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

