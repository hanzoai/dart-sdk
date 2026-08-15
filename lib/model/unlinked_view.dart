//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UnlinkedView {
  /// Returns a new [UnlinkedView] instance.
  UnlinkedView({
    this.unlinked,
  });

  /// Unlinked is always true. Unlinking is idempotent: an account this org does not hold answers the same, so a repeated call is not an error and is not an existence oracle either.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unlinked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnlinkedView &&
    other.unlinked == unlinked;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (unlinked == null ? 0 : unlinked!.hashCode);

  @override
  String toString() => 'UnlinkedView[unlinked=$unlinked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.unlinked != null) {
      json[r'unlinked'] = this.unlinked;
    } else {
      json[r'unlinked'] = null;
    }
    return json;
  }

  /// Returns a new [UnlinkedView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnlinkedView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnlinkedView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnlinkedView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnlinkedView(
        unlinked: mapValueOfType<bool>(json, r'unlinked'),
      );
    }
    return null;
  }

  static List<UnlinkedView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnlinkedView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnlinkedView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnlinkedView> mapFromJson(dynamic json) {
    final map = <String, UnlinkedView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnlinkedView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnlinkedView-objects as value to a dart map
  static Map<String, List<UnlinkedView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnlinkedView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnlinkedView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

