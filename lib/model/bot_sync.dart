//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BotSync {
  /// Returns a new [BotSync] instance.
  BotSync({
    this.projected,
    this.synced,
  });

  /// Projected is how many roster entries the reconcile touched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projected;

  /// Synced is true when the reconcile ran.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? synced;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BotSync &&
    other.projected == projected &&
    other.synced == synced;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projected == null ? 0 : projected!.hashCode) +
    (synced == null ? 0 : synced!.hashCode);

  @override
  String toString() => 'BotSync[projected=$projected, synced=$synced]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.projected != null) {
      json[r'projected'] = this.projected;
    } else {
      json[r'projected'] = null;
    }
    if (this.synced != null) {
      json[r'synced'] = this.synced;
    } else {
      json[r'synced'] = null;
    }
    return json;
  }

  /// Returns a new [BotSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BotSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BotSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BotSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BotSync(
        projected: mapValueOfType<int>(json, r'projected'),
        synced: mapValueOfType<bool>(json, r'synced'),
      );
    }
    return null;
  }

  static List<BotSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BotSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BotSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BotSync> mapFromJson(dynamic json) {
    final map = <String, BotSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BotSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BotSync-objects as value to a dart map
  static Map<String, List<BotSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BotSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BotSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

