//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReportResp {
  /// Returns a new [ReportResp] instance.
  ReportResp({
    this.accepted,
    this.stored,
  });
  /// Accepted is how many samples passed validation. Every one of them was accepted, or the whole report was refused — there is no partial success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accepted;

  /// Stored is whether the warehouse actually persisted them. False means the datastore was unavailable and the poll of history was lost; the request still succeeded, so a device retries without being blocked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stored;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportResp &&
    other.accepted == accepted &&
    other.stored == stored;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accepted == null ? 0 : accepted!.hashCode) +
    (stored == null ? 0 : stored!.hashCode);

  @override
  String toString() => 'ReportResp[accepted=$accepted, stored=$stored]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accepted != null) {
      json[r'accepted'] = this.accepted;
    } else {
      json[r'accepted'] = null;
    }
    if (this.stored != null) {
      json[r'stored'] = this.stored;
    } else {
      json[r'stored'] = null;
    }
    return json;
  }

  /// Returns a new [ReportResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReportResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReportResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReportResp(
        accepted: mapValueOfType<int>(json, r'accepted'),
        stored: mapValueOfType<bool>(json, r'stored'),
      );
    }
    return null;
  }

  static List<ReportResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportResp> mapFromJson(dynamic json) {
    final map = <String, ReportResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportResp-objects as value to a dart map
  static Map<String, List<ReportResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

