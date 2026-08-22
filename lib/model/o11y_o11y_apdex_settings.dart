//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yApdexSettings {
  /// Returns a new [O11yO11yApdexSettings] instance.
  O11yO11yApdexSettings({
    this.excludeStatusCodes,
    this.id,
    this.orgId,
    this.serviceName,
    this.threshold,
  });
  /// ExcludeStatusCodes are status codes excluded from the score, comma separated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? excludeStatusCodes;

  /// ID is the settings row's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// OrgID is the org the settings belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  /// ServiceName is the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  /// Threshold is the satisfied-response time in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? threshold;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yApdexSettings &&
    other.excludeStatusCodes == excludeStatusCodes &&
    other.id == id &&
    other.orgId == orgId &&
    other.serviceName == serviceName &&
    other.threshold == threshold;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (excludeStatusCodes == null ? 0 : excludeStatusCodes!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode);

  @override
  String toString() => 'O11yO11yApdexSettings[excludeStatusCodes=$excludeStatusCodes, id=$id, orgId=$orgId, serviceName=$serviceName, threshold=$threshold]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.excludeStatusCodes != null) {
      json[r'excludeStatusCodes'] = this.excludeStatusCodes;
    } else {
      json[r'excludeStatusCodes'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.orgId != null) {
      json[r'orgId'] = this.orgId;
    } else {
      json[r'orgId'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    if (this.threshold != null) {
      json[r'threshold'] = this.threshold;
    } else {
      json[r'threshold'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yApdexSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yApdexSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yApdexSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yApdexSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yApdexSettings(
        excludeStatusCodes: mapValueOfType<String>(json, r'excludeStatusCodes'),
        id: mapValueOfType<String>(json, r'id'),
        orgId: mapValueOfType<String>(json, r'orgId'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        threshold: num.parse('${json[r'threshold']}'),
      );
    }
    return null;
  }

  static List<O11yO11yApdexSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yApdexSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yApdexSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yApdexSettings> mapFromJson(dynamic json) {
    final map = <String, O11yO11yApdexSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yApdexSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yApdexSettings-objects as value to a dart map
  static Map<String, List<O11yO11yApdexSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yApdexSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yApdexSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

