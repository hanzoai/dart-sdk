//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TopModels {
  /// Returns a new [TopModels] instance.
  TopModels({
    this.available,
    this.items = const [],
    this.source_,
  });
  /// Available is true whenever the ledger answered, including with no rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Items is the ranked models, highest spend first.
  List<ModelRow> items;

  /// Source is the warehouse table the lens read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TopModels &&
    other.available == available &&
    _deepEquality.equals(other.items, items) &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (items.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'TopModels[available=$available, items=$items, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
      json[r'items'] = this.items;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [TopModels] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TopModels? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TopModels[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TopModels[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TopModels(
        available: mapValueOfType<bool>(json, r'available'),
        items: ModelRow.listFromJson(json[r'items']),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<TopModels> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TopModels>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TopModels.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TopModels> mapFromJson(dynamic json) {
    final map = <String, TopModels>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TopModels.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TopModels-objects as value to a dart map
  static Map<String, List<TopModels>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TopModels>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TopModels.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

