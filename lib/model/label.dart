//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Label {
  /// Returns a new [Label] instance.
  Label({
    this.endTime,
    this.id,
    this.speaker,
    this.startTime,
    this.tag1,
    this.tag2,
    this.tag3,
    this.text,
    this.type,
    this.user,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? endTime;

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
  String? speaker;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Label &&
    other.endTime == endTime &&
    other.id == id &&
    other.speaker == speaker &&
    other.startTime == startTime &&
    other.tag1 == tag1 &&
    other.tag2 == tag2 &&
    other.tag3 == tag3 &&
    other.text == text &&
    other.type == type &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endTime == null ? 0 : endTime!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (speaker == null ? 0 : speaker!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (tag1 == null ? 0 : tag1!.hashCode) +
    (tag2 == null ? 0 : tag2!.hashCode) +
    (tag3 == null ? 0 : tag3!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'Label[endTime=$endTime, id=$id, speaker=$speaker, startTime=$startTime, tag1=$tag1, tag2=$tag2, tag3=$tag3, text=$text, type=$type, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime;
    } else {
      json[r'endTime'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.speaker != null) {
      json[r'speaker'] = this.speaker;
    } else {
      json[r'speaker'] = null;
    }
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime;
    } else {
      json[r'startTime'] = null;
    }
    if (this.tag1 != null) {
      json[r'tag1'] = this.tag1;
    } else {
      json[r'tag1'] = null;
    }
    if (this.tag2 != null) {
      json[r'tag2'] = this.tag2;
    } else {
      json[r'tag2'] = null;
    }
    if (this.tag3 != null) {
      json[r'tag3'] = this.tag3;
    } else {
      json[r'tag3'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [Label] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Label? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Label[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Label[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Label(
        endTime: num.parse('${json[r'endTime']}'),
        id: mapValueOfType<String>(json, r'id'),
        speaker: mapValueOfType<String>(json, r'speaker'),
        startTime: num.parse('${json[r'startTime']}'),
        tag1: mapValueOfType<String>(json, r'tag1'),
        tag2: mapValueOfType<String>(json, r'tag2'),
        tag3: mapValueOfType<String>(json, r'tag3'),
        text: mapValueOfType<String>(json, r'text'),
        type: mapValueOfType<String>(json, r'type'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<Label> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Label>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Label.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Label> mapFromJson(dynamic json) {
    final map = <String, Label>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Label.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Label-objects as value to a dart map
  static Map<String, List<Label>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Label>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Label.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

