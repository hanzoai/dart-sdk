//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MoneyMargin {
  /// Returns a new [MoneyMargin] instance.
  MoneyMargin({
    this.grossCents,
    this.grossPct,
    this.profitable,
    this.runwayDays,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grossCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? grossPct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? profitable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? runwayDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoneyMargin &&
    other.grossCents == grossCents &&
    other.grossPct == grossPct &&
    other.profitable == profitable &&
    other.runwayDays == runwayDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (grossCents == null ? 0 : grossCents!.hashCode) +
    (grossPct == null ? 0 : grossPct!.hashCode) +
    (profitable == null ? 0 : profitable!.hashCode) +
    (runwayDays == null ? 0 : runwayDays!.hashCode);

  @override
  String toString() => 'MoneyMargin[grossCents=$grossCents, grossPct=$grossPct, profitable=$profitable, runwayDays=$runwayDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.grossCents != null) {
      json[r'grossCents'] = this.grossCents;
    } else {
      json[r'grossCents'] = null;
    }
    if (this.grossPct != null) {
      json[r'grossPct'] = this.grossPct;
    } else {
      json[r'grossPct'] = null;
    }
    if (this.profitable != null) {
      json[r'profitable'] = this.profitable;
    } else {
      json[r'profitable'] = null;
    }
    if (this.runwayDays != null) {
      json[r'runwayDays'] = this.runwayDays;
    } else {
      json[r'runwayDays'] = null;
    }
    return json;
  }

  /// Returns a new [MoneyMargin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoneyMargin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoneyMargin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoneyMargin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoneyMargin(
        grossCents: mapValueOfType<int>(json, r'grossCents'),
        grossPct: num.parse('${json[r'grossPct']}'),
        profitable: mapValueOfType<bool>(json, r'profitable'),
        runwayDays: num.parse('${json[r'runwayDays']}'),
      );
    }
    return null;
  }

  static List<MoneyMargin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyMargin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyMargin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoneyMargin> mapFromJson(dynamic json) {
    final map = <String, MoneyMargin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoneyMargin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoneyMargin-objects as value to a dart map
  static Map<String, List<MoneyMargin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoneyMargin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoneyMargin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

