//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnablementBoard {
  /// Returns a new [EnablementBoard] instance.
  EnablementBoard({
    this.betas = const [],
    this.items = const [],
    this.org,
  });
  /// Betas are the subset of Items the caller's org may still opt into.
  List<UserEnablementItem> betas;

  /// Items is every managed item, each resolved for the caller's org.
  List<UserEnablementItem> items;

  /// Org is the org this view was resolved for; empty for a caller with no validated principal, who sees only the generally-available items.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnablementBoard &&
    _deepEquality.equals(other.betas, betas) &&
    _deepEquality.equals(other.items, items) &&
    other.org == org;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (betas.hashCode) +
    (items.hashCode) +
    (org == null ? 0 : org!.hashCode);

  @override
  String toString() => 'EnablementBoard[betas=$betas, items=$items, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'betas'] = this.betas;
      json[r'items'] = this.items;
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    return json;
  }

  /// Returns a new [EnablementBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnablementBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnablementBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnablementBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnablementBoard(
        betas: UserEnablementItem.listFromJson(json[r'betas']),
        items: UserEnablementItem.listFromJson(json[r'items']),
        org: mapValueOfType<String>(json, r'org'),
      );
    }
    return null;
  }

  static List<EnablementBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnablementBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnablementBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnablementBoard> mapFromJson(dynamic json) {
    final map = <String, EnablementBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnablementBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnablementBoard-objects as value to a dart map
  static Map<String, List<EnablementBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnablementBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnablementBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

