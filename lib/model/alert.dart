//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Alert {
  /// Returns a new [Alert] instance.
  Alert({
    this.createdAt,
    this.currency,
    this.enforce,
    this.id,
    this.over,
    this.period,
    this.periodSpentCents,
    this.project,
    this.rateLimitRpm,
    this.resetsAt,
    this.service,
    this.softPct,
    this.threshold,
    this.title,
    this.triggeredAt,
    this.updatedAt,
    this.userId,
    this.warn,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

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
  bool? over;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? periodSpentCents;

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
  String? resetsAt;

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
  int? threshold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? triggeredAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? warn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Alert &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.enforce == enforce &&
    other.id == id &&
    other.over == over &&
    other.period == period &&
    other.periodSpentCents == periodSpentCents &&
    other.project == project &&
    other.rateLimitRpm == rateLimitRpm &&
    other.resetsAt == resetsAt &&
    other.service == service &&
    other.softPct == softPct &&
    other.threshold == threshold &&
    other.title == title &&
    other.triggeredAt == triggeredAt &&
    other.updatedAt == updatedAt &&
    other.userId == userId &&
    other.warn == warn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (enforce == null ? 0 : enforce!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (over == null ? 0 : over!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (periodSpentCents == null ? 0 : periodSpentCents!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (rateLimitRpm == null ? 0 : rateLimitRpm!.hashCode) +
    (resetsAt == null ? 0 : resetsAt!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (softPct == null ? 0 : softPct!.hashCode) +
    (threshold == null ? 0 : threshold!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (triggeredAt == null ? 0 : triggeredAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (warn == null ? 0 : warn!.hashCode);

  @override
  String toString() => 'Alert[createdAt=$createdAt, currency=$currency, enforce=$enforce, id=$id, over=$over, period=$period, periodSpentCents=$periodSpentCents, project=$project, rateLimitRpm=$rateLimitRpm, resetsAt=$resetsAt, service=$service, softPct=$softPct, threshold=$threshold, title=$title, triggeredAt=$triggeredAt, updatedAt=$updatedAt, userId=$userId, warn=$warn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
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
    if (this.over != null) {
      json[r'over'] = this.over;
    } else {
      json[r'over'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.periodSpentCents != null) {
      json[r'periodSpentCents'] = this.periodSpentCents;
    } else {
      json[r'periodSpentCents'] = null;
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
    if (this.resetsAt != null) {
      json[r'resetsAt'] = this.resetsAt;
    } else {
      json[r'resetsAt'] = null;
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
    if (this.triggeredAt != null) {
      json[r'triggeredAt'] = this.triggeredAt;
    } else {
      json[r'triggeredAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.warn != null) {
      json[r'warn'] = this.warn;
    } else {
      json[r'warn'] = null;
    }
    return json;
  }

  /// Returns a new [Alert] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Alert? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Alert[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Alert[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Alert(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        enforce: mapValueOfType<bool>(json, r'enforce'),
        id: mapValueOfType<String>(json, r'id'),
        over: mapValueOfType<bool>(json, r'over'),
        period: mapValueOfType<String>(json, r'period'),
        periodSpentCents: mapValueOfType<int>(json, r'periodSpentCents'),
        project: mapValueOfType<String>(json, r'project'),
        rateLimitRpm: mapValueOfType<int>(json, r'rateLimitRpm'),
        resetsAt: mapValueOfType<String>(json, r'resetsAt'),
        service: mapValueOfType<String>(json, r'service'),
        softPct: mapValueOfType<int>(json, r'softPct'),
        threshold: mapValueOfType<int>(json, r'threshold'),
        title: mapValueOfType<String>(json, r'title'),
        triggeredAt: mapValueOfType<String>(json, r'triggeredAt'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
        userId: mapValueOfType<String>(json, r'userId'),
        warn: mapValueOfType<bool>(json, r'warn'),
      );
    }
    return null;
  }

  static List<Alert> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Alert>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Alert.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Alert> mapFromJson(dynamic json) {
    final map = <String, Alert>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Alert.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Alert-objects as value to a dart map
  static Map<String, List<Alert>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Alert>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Alert.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

