//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TierLimits {
  /// Returns a new [TierLimits] instance.
  TierLimits({
    this.allowedModels = const [],
    this.dailyCreditsCents,
    this.displayName,
    this.maxAgents,
    this.name,
    this.unlimitedAgents,
  });
  List<String> allowedModels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dailyCreditsCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAgents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UnlimitedAgents reports that MaxAgents 0 means \"no ceiling\" rather than \"no agents\" — the reading a bare zero cannot carry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unlimitedAgents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TierLimits &&
    _deepEquality.equals(other.allowedModels, allowedModels) &&
    other.dailyCreditsCents == dailyCreditsCents &&
    other.displayName == displayName &&
    other.maxAgents == maxAgents &&
    other.name == name &&
    other.unlimitedAgents == unlimitedAgents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowedModels.hashCode) +
    (dailyCreditsCents == null ? 0 : dailyCreditsCents!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (maxAgents == null ? 0 : maxAgents!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (unlimitedAgents == null ? 0 : unlimitedAgents!.hashCode);

  @override
  String toString() => 'TierLimits[allowedModels=$allowedModels, dailyCreditsCents=$dailyCreditsCents, displayName=$displayName, maxAgents=$maxAgents, name=$name, unlimitedAgents=$unlimitedAgents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'allowedModels'] = this.allowedModels;
    if (this.dailyCreditsCents != null) {
      json[r'dailyCreditsCents'] = this.dailyCreditsCents;
    } else {
      json[r'dailyCreditsCents'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.maxAgents != null) {
      json[r'maxAgents'] = this.maxAgents;
    } else {
      json[r'maxAgents'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.unlimitedAgents != null) {
      json[r'unlimitedAgents'] = this.unlimitedAgents;
    } else {
      json[r'unlimitedAgents'] = null;
    }
    return json;
  }

  /// Returns a new [TierLimits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TierLimits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TierLimits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TierLimits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TierLimits(
        allowedModels: json[r'allowedModels'] is Iterable
            ? (json[r'allowedModels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dailyCreditsCents: mapValueOfType<int>(json, r'dailyCreditsCents'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        maxAgents: mapValueOfType<int>(json, r'maxAgents'),
        name: mapValueOfType<String>(json, r'name'),
        unlimitedAgents: mapValueOfType<bool>(json, r'unlimitedAgents'),
      );
    }
    return null;
  }

  static List<TierLimits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TierLimits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TierLimits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TierLimits> mapFromJson(dynamic json) {
    final map = <String, TierLimits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TierLimits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TierLimits-objects as value to a dart map
  static Map<String, List<TierLimits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TierLimits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TierLimits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

