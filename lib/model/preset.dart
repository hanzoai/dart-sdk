//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Preset {
  /// Returns a new [Preset] instance.
  Preset({
    this.arms = const [],
    this.name,
    this.note,
    this.owner,
    this.panel,
    this.rank = const [],
  });
  /// the blend — model ids from the arena
  List<String> arms;

  /// served as enso-<name>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// why this blend (audit)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// scoping org (never cross-tenant)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// fan-out width (>=1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? panel;

  /// escalation order over arms
  List<String> rank;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Preset &&
    _deepEquality.equals(other.arms, arms) &&
    other.name == name &&
    other.note == note &&
    other.owner == owner &&
    other.panel == panel &&
    _deepEquality.equals(other.rank, rank);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arms.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (panel == null ? 0 : panel!.hashCode) +
    (rank.hashCode);

  @override
  String toString() => 'Preset[arms=$arms, name=$name, note=$note, owner=$owner, panel=$panel, rank=$rank]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'arms'] = this.arms;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.panel != null) {
      json[r'panel'] = this.panel;
    } else {
      json[r'panel'] = null;
    }
      json[r'rank'] = this.rank;
    return json;
  }

  /// Returns a new [Preset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Preset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Preset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Preset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Preset(
        arms: json[r'arms'] is Iterable
            ? (json[r'arms'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        note: mapValueOfType<String>(json, r'note'),
        owner: mapValueOfType<String>(json, r'owner'),
        panel: mapValueOfType<int>(json, r'panel'),
        rank: json[r'rank'] is Iterable
            ? (json[r'rank'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Preset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Preset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Preset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Preset> mapFromJson(dynamic json) {
    final map = <String, Preset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Preset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Preset-objects as value to a dart map
  static Map<String, List<Preset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Preset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Preset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

