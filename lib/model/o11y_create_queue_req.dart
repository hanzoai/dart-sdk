//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yCreateQueueReq {
  /// Returns a new [O11yCreateQueueReq] instance.
  O11yCreateQueueReq({
    this.description,
    this.name,
    this.scoreConfigIds = const [],
  });

  /// Description is optional free text, up to 512 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Name is the queue's display handle, 1–128 printable characters. It must be unique within the org's project. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ScoreConfigIDs are the eval score-configs reviewers grade against.
  List<String> scoreConfigIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yCreateQueueReq &&
    other.description == description &&
    other.name == name &&
    _deepEquality.equals(other.scoreConfigIds, scoreConfigIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scoreConfigIds.hashCode);

  @override
  String toString() => 'O11yCreateQueueReq[description=$description, name=$name, scoreConfigIds=$scoreConfigIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'scoreConfigIds'] = this.scoreConfigIds;
    return json;
  }

  /// Returns a new [O11yCreateQueueReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yCreateQueueReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yCreateQueueReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yCreateQueueReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yCreateQueueReq(
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        scoreConfigIds: json[r'scoreConfigIds'] is Iterable
            ? (json[r'scoreConfigIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yCreateQueueReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yCreateQueueReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yCreateQueueReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yCreateQueueReq> mapFromJson(dynamic json) {
    final map = <String, O11yCreateQueueReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yCreateQueueReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yCreateQueueReq-objects as value to a dart map
  static Map<String, List<O11yCreateQueueReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yCreateQueueReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yCreateQueueReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

