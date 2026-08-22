//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ControlList {
  /// Returns a new [ControlList] instance.
  ControlList({
    this.absent,
    this.automated,
    this.controls = const [],
    this.partial,
    this.statement,
    this.total,
    this.unverified,
    this.version,
  });
  /// Absent is how many the organization does not have. Each still names the clause it would satisfy, and none of them moves a coverage number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? absent;

  /// Automated is how many run with nobody in the loop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? automated;

  /// Controls is every control, opaque because the organization owns its shape.
  List<Object> controls;

  /// Partial is how many run but do not cover their whole claim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? partial;

  /// Statement is the counts as one sentence, safe to quote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statement;

  /// Total is how many controls this organization publishes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Unverified is how many rest on somebody having read the source rather than on a test or an audit row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unverified;

  /// Version is the embedded inventory's version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ControlList &&
    other.absent == absent &&
    other.automated == automated &&
    _deepEquality.equals(other.controls, controls) &&
    other.partial == partial &&
    other.statement == statement &&
    other.total == total &&
    other.unverified == unverified &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absent == null ? 0 : absent!.hashCode) +
    (automated == null ? 0 : automated!.hashCode) +
    (controls.hashCode) +
    (partial == null ? 0 : partial!.hashCode) +
    (statement == null ? 0 : statement!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (unverified == null ? 0 : unverified!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ControlList[absent=$absent, automated=$automated, controls=$controls, partial=$partial, statement=$statement, total=$total, unverified=$unverified, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.absent != null) {
      json[r'absent'] = this.absent;
    } else {
      json[r'absent'] = null;
    }
    if (this.automated != null) {
      json[r'automated'] = this.automated;
    } else {
      json[r'automated'] = null;
    }
      json[r'controls'] = this.controls;
    if (this.partial != null) {
      json[r'partial'] = this.partial;
    } else {
      json[r'partial'] = null;
    }
    if (this.statement != null) {
      json[r'statement'] = this.statement;
    } else {
      json[r'statement'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.unverified != null) {
      json[r'unverified'] = this.unverified;
    } else {
      json[r'unverified'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ControlList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ControlList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ControlList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ControlList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ControlList(
        absent: mapValueOfType<int>(json, r'absent'),
        automated: mapValueOfType<int>(json, r'automated'),
        controls: json[r'controls'] is Iterable
            ? (json[r'controls'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        partial: mapValueOfType<int>(json, r'partial'),
        statement: mapValueOfType<String>(json, r'statement'),
        total: mapValueOfType<int>(json, r'total'),
        unverified: mapValueOfType<int>(json, r'unverified'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ControlList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ControlList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ControlList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ControlList> mapFromJson(dynamic json) {
    final map = <String, ControlList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ControlList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ControlList-objects as value to a dart map
  static Map<String, List<ControlList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ControlList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ControlList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

