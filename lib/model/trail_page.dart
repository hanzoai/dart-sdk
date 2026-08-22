//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrailPage {
  /// Returns a new [TrailPage] instance.
  TrailPage({
    this.data = const [],
    this.msg,
    this.status,
    this.total,
  });
  /// Data is one page of the org's events, newest first. Empty, never null.
  List<Wire> data;

  /// Msg is the envelope's message slot, empty on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? msg;

  /// Status is the envelope's status slot, \"ok\" on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Total is how many events match the filter, across all pages — what a pager needs to size itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrailPage &&
    _deepEquality.equals(other.data, data) &&
    other.msg == msg &&
    other.status == status &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (msg == null ? 0 : msg!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'TrailPage[data=$data, msg=$msg, status=$status, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    if (this.msg != null) {
      json[r'msg'] = this.msg;
    } else {
      json[r'msg'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [TrailPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrailPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrailPage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrailPage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrailPage(
        data: Wire.listFromJson(json[r'data']),
        msg: mapValueOfType<String>(json, r'msg'),
        status: mapValueOfType<String>(json, r'status'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<TrailPage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrailPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrailPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrailPage> mapFromJson(dynamic json) {
    final map = <String, TrailPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrailPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrailPage-objects as value to a dart map
  static Map<String, List<TrailPage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrailPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrailPage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

