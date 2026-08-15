//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TransitionIn {
  /// Returns a new [TransitionIn] instance.
  TransitionIn({
    this.doctype,
    this.name,
    this.scheduleAt,
    this.to,
  });

  /// DocType is the content type to act on, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doctype;

  /// Name is the document to act on, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ScheduleAt is an ISO-8601 go-live time handed to the channel's own scheduler; \"\" distributes now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scheduleAt;

  /// To is the lifecycle state to move to. Required, and the move must be a legal edge from the item's current state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransitionIn &&
    other.doctype == doctype &&
    other.name == name &&
    other.scheduleAt == scheduleAt &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctype == null ? 0 : doctype!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scheduleAt == null ? 0 : scheduleAt!.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'TransitionIn[doctype=$doctype, name=$name, scheduleAt=$scheduleAt, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.doctype != null) {
      json[r'doctype'] = this.doctype;
    } else {
      json[r'doctype'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.scheduleAt != null) {
      json[r'scheduleAt'] = this.scheduleAt;
    } else {
      json[r'scheduleAt'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [TransitionIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransitionIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TransitionIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TransitionIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TransitionIn(
        doctype: mapValueOfType<String>(json, r'doctype'),
        name: mapValueOfType<String>(json, r'name'),
        scheduleAt: mapValueOfType<String>(json, r'scheduleAt'),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<TransitionIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransitionIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransitionIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransitionIn> mapFromJson(dynamic json) {
    final map = <String, TransitionIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransitionIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransitionIn-objects as value to a dart map
  static Map<String, List<TransitionIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TransitionIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TransitionIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

