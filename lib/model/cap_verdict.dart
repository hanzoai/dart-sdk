//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CapVerdict {
  /// Returns a new [CapVerdict] instance.
  CapVerdict({
    this.allow,
    this.capCents,
    this.reason,
    this.spentCents,
    this.warnPct,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? capCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spentCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? warnPct;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapVerdict &&
    other.allow == allow &&
    other.capCents == capCents &&
    other.reason == reason &&
    other.spentCents == spentCents &&
    other.warnPct == warnPct;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allow == null ? 0 : allow!.hashCode) +
    (capCents == null ? 0 : capCents!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (spentCents == null ? 0 : spentCents!.hashCode) +
    (warnPct == null ? 0 : warnPct!.hashCode);

  @override
  String toString() => 'CapVerdict[allow=$allow, capCents=$capCents, reason=$reason, spentCents=$spentCents, warnPct=$warnPct]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allow != null) {
      json[r'allow'] = this.allow;
    } else {
      json[r'allow'] = null;
    }
    if (this.capCents != null) {
      json[r'capCents'] = this.capCents;
    } else {
      json[r'capCents'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.spentCents != null) {
      json[r'spentCents'] = this.spentCents;
    } else {
      json[r'spentCents'] = null;
    }
    if (this.warnPct != null) {
      json[r'warnPct'] = this.warnPct;
    } else {
      json[r'warnPct'] = null;
    }
    return json;
  }

  /// Returns a new [CapVerdict] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CapVerdict? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CapVerdict[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CapVerdict[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CapVerdict(
        allow: mapValueOfType<bool>(json, r'allow'),
        capCents: mapValueOfType<int>(json, r'capCents'),
        reason: mapValueOfType<String>(json, r'reason'),
        spentCents: mapValueOfType<int>(json, r'spentCents'),
        warnPct: mapValueOfType<int>(json, r'warnPct'),
      );
    }
    return null;
  }

  static List<CapVerdict> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CapVerdict>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CapVerdict.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CapVerdict> mapFromJson(dynamic json) {
    final map = <String, CapVerdict>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapVerdict.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CapVerdict-objects as value to a dart map
  static Map<String, List<CapVerdict>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CapVerdict>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CapVerdict.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

