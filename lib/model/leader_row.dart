//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LeaderRow {
  /// Returns a new [LeaderRow] instance.
  LeaderRow({
    this.gap,
    this.measured,
    this.model,
    this.n,
    this.protocol,
    this.published,
  });

  /// published − measured (the arena signal)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? gap;

  /// hanzo-measured accuracy % (nil if unrun)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? measured;

  /// the model this row scores
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// coverage — NEVER compare across different n
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n;

  /// how the vendor scored their claim: single-attempt, pass@k or agentic
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  /// provider-claimed % (nil if none)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? published;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderRow &&
    other.gap == gap &&
    other.measured == measured &&
    other.model == model &&
    other.n == n &&
    other.protocol == protocol &&
    other.published == published;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gap == null ? 0 : gap!.hashCode) +
    (measured == null ? 0 : measured!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (published == null ? 0 : published!.hashCode);

  @override
  String toString() => 'LeaderRow[gap=$gap, measured=$measured, model=$model, n=$n, protocol=$protocol, published=$published]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gap != null) {
      json[r'gap'] = this.gap;
    } else {
      json[r'gap'] = null;
    }
    if (this.measured != null) {
      json[r'measured'] = this.measured;
    } else {
      json[r'measured'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderRow(
        gap: num.parse('${json[r'gap']}'),
        measured: num.parse('${json[r'measured']}'),
        model: mapValueOfType<String>(json, r'model'),
        n: mapValueOfType<int>(json, r'n'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        published: num.parse('${json[r'published']}'),
      );
    }
    return null;
  }

  static List<LeaderRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderRow> mapFromJson(dynamic json) {
    final map = <String, LeaderRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderRow-objects as value to a dart map
  static Map<String, List<LeaderRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

