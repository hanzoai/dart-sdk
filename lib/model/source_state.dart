//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SourceState {
  /// Returns a new [SourceState] instance.
  SourceState({
    this.available,
    this.note,
    this.scope,
    this.source_,
  });
  /// Available reports whether this ledger answered; false is honest \"unavailable\", never a zero that would read as no usage.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Note says in prose what the ledger's numbers mean.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Scope is whose usage the ledger measures: user or org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Source is the table of record behind the ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SourceState &&
    other.available == available &&
    other.note == note &&
    other.scope == scope &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'SourceState[available=$available, note=$note, scope=$scope, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [SourceState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SourceState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SourceState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SourceState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SourceState(
        available: mapValueOfType<bool>(json, r'available'),
        note: mapValueOfType<String>(json, r'note'),
        scope: mapValueOfType<String>(json, r'scope'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<SourceState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SourceState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SourceState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SourceState> mapFromJson(dynamic json) {
    final map = <String, SourceState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SourceState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SourceState-objects as value to a dart map
  static Map<String, List<SourceState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SourceState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SourceState.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

