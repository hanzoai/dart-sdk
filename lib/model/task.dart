//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Task {
  /// Returns a new [Task] instance.
  Task({
    this.activity,
    this.createdTime,
    this.displayName,
    this.documentText,
    this.documentUrl,
    this.example,
    this.grade,
    this.labels = const [],
    this.log,
    this.name,
    this.owner,
    this.path,
    this.provider,
    this.result,
    this.scale,
    this.score,
    this.subject,
    this.topic,
    this.type,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? activity;

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
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? example;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grade;

  List<String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? log;

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
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

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
  String? topic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Task &&
    other.activity == activity &&
    other.createdTime == createdTime &&
    other.displayName == displayName &&
    other.documentText == documentText &&
    other.documentUrl == documentUrl &&
    other.example == example &&
    other.grade == grade &&
    _deepEquality.equals(other.labels, labels) &&
    other.log == log &&
    other.name == name &&
    other.owner == owner &&
    other.path == path &&
    other.provider == provider &&
    other.result == result &&
    other.scale == scale &&
    other.score == score &&
    other.subject == subject &&
    other.topic == topic &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activity == null ? 0 : activity!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (documentText == null ? 0 : documentText!.hashCode) +
    (documentUrl == null ? 0 : documentUrl!.hashCode) +
    (example == null ? 0 : example!.hashCode) +
    (grade == null ? 0 : grade!.hashCode) +
    (labels.hashCode) +
    (log == null ? 0 : log!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (scale == null ? 0 : scale!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (topic == null ? 0 : topic!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Task[activity=$activity, createdTime=$createdTime, displayName=$displayName, documentText=$documentText, documentUrl=$documentUrl, example=$example, grade=$grade, labels=$labels, log=$log, name=$name, owner=$owner, path=$path, provider=$provider, result=$result, scale=$scale, score=$score, subject=$subject, topic=$topic, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activity != null) {
      json[r'activity'] = this.activity;
    } else {
      json[r'activity'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.documentText != null) {
      json[r'documentText'] = this.documentText;
    } else {
      json[r'documentText'] = null;
    }
    if (this.documentUrl != null) {
      json[r'documentUrl'] = this.documentUrl;
    } else {
      json[r'documentUrl'] = null;
    }
    if (this.example != null) {
      json[r'example'] = this.example;
    } else {
      json[r'example'] = null;
    }
    if (this.grade != null) {
      json[r'grade'] = this.grade;
    } else {
      json[r'grade'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.log != null) {
      json[r'log'] = this.log;
    } else {
      json[r'log'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.scale != null) {
      json[r'scale'] = this.scale;
    } else {
      json[r'scale'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.topic != null) {
      json[r'topic'] = this.topic;
    } else {
      json[r'topic'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Task] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Task? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Task[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Task[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Task(
        activity: mapValueOfType<String>(json, r'activity'),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        documentText: mapValueOfType<String>(json, r'documentText'),
        documentUrl: mapValueOfType<String>(json, r'documentUrl'),
        example: mapValueOfType<String>(json, r'example'),
        grade: mapValueOfType<String>(json, r'grade'),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        log: mapValueOfType<String>(json, r'log'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        path: mapValueOfType<String>(json, r'path'),
        provider: mapValueOfType<String>(json, r'provider'),
        result: mapValueOfType<String>(json, r'result'),
        scale: mapValueOfType<String>(json, r'scale'),
        score: num.parse('${json[r'score']}'),
        subject: mapValueOfType<String>(json, r'subject'),
        topic: mapValueOfType<String>(json, r'topic'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<Task> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Task>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Task.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Task> mapFromJson(dynamic json) {
    final map = <String, Task>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Task.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Task-objects as value to a dart map
  static Map<String, List<Task>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Task>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Task.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

