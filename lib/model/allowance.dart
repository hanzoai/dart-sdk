//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Allowance {
  /// Returns a new [Allowance] instance.
  Allowance({
    this.limit,
    this.plan,
    this.resets,
    this.spent,
    this.used,
  });
  /// calls the plan allows per period; 0 = unbounded
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// the tier the limit came from
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// unix seconds; when the count starts again
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? resets;

  /// the subject is at the limit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? spent;

  /// Used is how many zero-priced calls this subject has been SERVED in the period ending at Resets — the UTC calendar day. Only a served call counts, so an admission check, a refusal, or a vendor that never answered leaves it where it stood. It stops AT Limit rather than climbing past it, so Limit-Used is what remains and never goes negative.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? used;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Allowance &&
    other.limit == limit &&
    other.plan == plan &&
    other.resets == resets &&
    other.spent == spent &&
    other.used == used;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (resets == null ? 0 : resets!.hashCode) +
    (spent == null ? 0 : spent!.hashCode) +
    (used == null ? 0 : used!.hashCode);

  @override
  String toString() => 'Allowance[limit=$limit, plan=$plan, resets=$resets, spent=$spent, used=$used]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.resets != null) {
      json[r'resets'] = this.resets;
    } else {
      json[r'resets'] = null;
    }
    if (this.spent != null) {
      json[r'spent'] = this.spent;
    } else {
      json[r'spent'] = null;
    }
    if (this.used != null) {
      json[r'used'] = this.used;
    } else {
      json[r'used'] = null;
    }
    return json;
  }

  /// Returns a new [Allowance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Allowance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Allowance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Allowance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Allowance(
        limit: mapValueOfType<int>(json, r'limit'),
        plan: mapValueOfType<String>(json, r'plan'),
        resets: mapValueOfType<int>(json, r'resets'),
        spent: mapValueOfType<bool>(json, r'spent'),
        used: mapValueOfType<int>(json, r'used'),
      );
    }
    return null;
  }

  static List<Allowance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Allowance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Allowance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Allowance> mapFromJson(dynamic json) {
    final map = <String, Allowance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Allowance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Allowance-objects as value to a dart map
  static Map<String, List<Allowance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Allowance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Allowance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

