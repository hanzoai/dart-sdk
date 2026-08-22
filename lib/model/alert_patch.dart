//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AlertPatch {
  /// Returns a new [AlertPatch] instance.
  AlertPatch({
    this.enforce,
    this.id,
    this.project,
    this.rateLimitRpm,
    this.service,
    this.softPct,
    this.subject,
    this.threshold,
    this.title,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enforce;

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
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateLimitRpm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? softPct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? threshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlertPatch &&
    other.enforce == enforce &&
    other.id == id &&
    other.project == project &&
    other.rateLimitRpm == rateLimitRpm &&
    other.service == service &&
    other.softPct == softPct &&
    other.subject == subject &&
    other.threshold == threshold &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enforce == null ? 0 : enforce!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (rateLimitRpm == null ? 0 : rateLimitRpm!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (softPct == null ? 0 : softPct!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'AlertPatch[enforce=$enforce, id=$id, project=$project, rateLimitRpm=$rateLimitRpm, service=$service, softPct=$softPct, subject=$subject, threshold=$threshold, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enforce != null) {
      json[r'enforce'] = this.enforce;
    } else {
      json[r'enforce'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.rateLimitRpm != null) {
      json[r'rateLimitRpm'] = this.rateLimitRpm;
    } else {
      json[r'rateLimitRpm'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.softPct != null) {
      json[r'softPct'] = this.softPct;
    } else {
      json[r'softPct'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.threshold != null) {
      json[r'threshold'] = this.threshold;
    } else {
      json[r'threshold'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [AlertPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlertPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlertPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlertPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlertPatch(
        enforce: mapValueOfType<bool>(json, r'enforce'),
        id: mapValueOfType<String>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        rateLimitRpm: mapValueOfType<int>(json, r'rateLimitRpm'),
        service: mapValueOfType<String>(json, r'service'),
        softPct: mapValueOfType<int>(json, r'softPct'),
        subject: mapValueOfType<String>(json, r'subject'),
        threshold: mapValueOfType<int>(json, r'threshold'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<AlertPatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlertPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlertPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlertPatch> mapFromJson(dynamic json) {
    final map = <String, AlertPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlertPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlertPatch-objects as value to a dart map
  static Map<String, List<AlertPatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlertPatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlertPatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

