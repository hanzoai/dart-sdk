//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Assignment {
  /// Returns a new [Assignment] instance.
  Assignment({
    this.experiment,
    this.on_,
    this.payload,
    this.subject,
    this.variant,
  });

  /// Trial is the experiment that was evaluated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? experiment;

  /// On is false when the flag returned nothing for this subject, which means the subject is not enrolled — not an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? on_;

  Object? payload;

  /// Subject is the unit that was bucketed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Arm is the arm the subject falls in, empty when the flag enrolled it in none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Assignment &&
    other.experiment == experiment &&
    other.on_ == on_ &&
    other.payload == payload &&
    other.subject == subject &&
    other.variant == variant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (experiment == null ? 0 : experiment!.hashCode) +
    (on_ == null ? 0 : on_!.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (variant == null ? 0 : variant!.hashCode);

  @override
  String toString() => 'Assignment[experiment=$experiment, on_=$on_, payload=$payload, subject=$subject, variant=$variant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.experiment != null) {
      json[r'experiment'] = this.experiment;
    } else {
      json[r'experiment'] = null;
    }
    if (this.on_ != null) {
      json[r'on'] = this.on_;
    } else {
      json[r'on'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    return json;
  }

  /// Returns a new [Assignment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Assignment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Assignment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Assignment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Assignment(
        experiment: mapValueOfType<String>(json, r'experiment'),
        on_: mapValueOfType<bool>(json, r'on'),
        payload: mapValueOfType<Object>(json, r'payload'),
        subject: mapValueOfType<String>(json, r'subject'),
        variant: mapValueOfType<String>(json, r'variant'),
      );
    }
    return null;
  }

  static List<Assignment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Assignment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Assignment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Assignment> mapFromJson(dynamic json) {
    final map = <String, Assignment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Assignment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Assignment-objects as value to a dart map
  static Map<String, List<Assignment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Assignment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Assignment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

