//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubscriptionRef {
  /// Returns a new [SubscriptionRef] instance.
  SubscriptionRef({
    this.atPeriodEnd,
    this.id,
  });
  /// AtPeriodEnd cancels at the end of the paid period rather than at once. It defaults TRUE on the endpoint, because a customer who cancels has already paid for the period they are in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? atPeriodEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionRef &&
    other.atPeriodEnd == atPeriodEnd &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (atPeriodEnd == null ? 0 : atPeriodEnd!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'SubscriptionRef[atPeriodEnd=$atPeriodEnd, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.atPeriodEnd != null) {
      json[r'atPeriodEnd'] = this.atPeriodEnd;
    } else {
      json[r'atPeriodEnd'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionRef] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionRef? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionRef[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionRef[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionRef(
        atPeriodEnd: mapValueOfType<bool>(json, r'atPeriodEnd'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<SubscriptionRef> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionRef>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionRef.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionRef> mapFromJson(dynamic json) {
    final map = <String, SubscriptionRef>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionRef.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionRef-objects as value to a dart map
  static Map<String, List<SubscriptionRef>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionRef>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionRef.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

