//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProgressView {
  /// Returns a new [ProgressView] instance.
  ProgressView({
    this.done,
    this.next,
    this.percent,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? done;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? next;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProgressView &&
    other.done == done &&
    other.next == next &&
    other.percent == percent &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (done == null ? 0 : done!.hashCode) +
    (next == null ? 0 : next!.hashCode) +
    (percent == null ? 0 : percent!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'ProgressView[done=$done, next=$next, percent=$percent, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.done != null) {
      json[r'done'] = this.done;
    } else {
      json[r'done'] = null;
    }
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
    if (this.percent != null) {
      json[r'percent'] = this.percent;
    } else {
      json[r'percent'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [ProgressView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProgressView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProgressView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProgressView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProgressView(
        done: mapValueOfType<int>(json, r'done'),
        next: mapValueOfType<String>(json, r'next'),
        percent: mapValueOfType<int>(json, r'percent'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<ProgressView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProgressView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProgressView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProgressView> mapFromJson(dynamic json) {
    final map = <String, ProgressView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProgressView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProgressView-objects as value to a dart map
  static Map<String, List<ProgressView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProgressView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProgressView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

