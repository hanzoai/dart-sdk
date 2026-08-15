//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAlertStatus {
  /// Returns a new [O11yAlertStatus] instance.
  O11yAlertStatus({
    this.inhibitedBy = const [],
    this.silencedBy = const [],
    this.state,
  });

  List<String> inhibitedBy;

  List<String> silencedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAlertStatus &&
    _deepEquality.equals(other.inhibitedBy, inhibitedBy) &&
    _deepEquality.equals(other.silencedBy, silencedBy) &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inhibitedBy.hashCode) +
    (silencedBy.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'O11yAlertStatus[inhibitedBy=$inhibitedBy, silencedBy=$silencedBy, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inhibitedBy'] = this.inhibitedBy;
      json[r'silencedBy'] = this.silencedBy;
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAlertStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAlertStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAlertStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAlertStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAlertStatus(
        inhibitedBy: json[r'inhibitedBy'] is Iterable
            ? (json[r'inhibitedBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        silencedBy: json[r'silencedBy'] is Iterable
            ? (json[r'silencedBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<O11yAlertStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAlertStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAlertStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAlertStatus> mapFromJson(dynamic json) {
    final map = <String, O11yAlertStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAlertStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAlertStatus-objects as value to a dart map
  static Map<String, List<O11yAlertStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAlertStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAlertStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

