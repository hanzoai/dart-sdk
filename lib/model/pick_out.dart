//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PickOut {
  /// Returns a new [PickOut] instance.
  PickOut({
    this.consumers = const [],
    this.total,
  });

  /// Consumers is the page, ordered by name.
  List<Consumer> consumers;

  /// Total is the stream's consumer count before paging.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PickOut &&
    _deepEquality.equals(other.consumers, consumers) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (consumers.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'PickOut[consumers=$consumers, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'consumers'] = this.consumers;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [PickOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PickOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PickOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PickOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PickOut(
        consumers: Consumer.listFromJson(json[r'consumers']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<PickOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PickOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PickOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PickOut> mapFromJson(dynamic json) {
    final map = <String, PickOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PickOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PickOut-objects as value to a dart map
  static Map<String, List<PickOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PickOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PickOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

