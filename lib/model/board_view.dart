//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BoardView {
  /// Returns a new [BoardView] instance.
  BoardView({
    this.auditUrl,
    this.configured,
    this.engine,
    this.manageUrl,
    this.switches = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? auditUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? configured;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? engine;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manageUrl;

  List<SwitchView> switches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BoardView &&
    other.auditUrl == auditUrl &&
    other.configured == configured &&
    other.engine == engine &&
    other.manageUrl == manageUrl &&
    _deepEquality.equals(other.switches, switches);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (auditUrl == null ? 0 : auditUrl!.hashCode) +
    (configured == null ? 0 : configured!.hashCode) +
    (engine == null ? 0 : engine!.hashCode) +
    (manageUrl == null ? 0 : manageUrl!.hashCode) +
    (switches.hashCode);

  @override
  String toString() => 'BoardView[auditUrl=$auditUrl, configured=$configured, engine=$engine, manageUrl=$manageUrl, switches=$switches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.auditUrl != null) {
      json[r'auditUrl'] = this.auditUrl;
    } else {
      json[r'auditUrl'] = null;
    }
    if (this.configured != null) {
      json[r'configured'] = this.configured;
    } else {
      json[r'configured'] = null;
    }
    if (this.engine != null) {
      json[r'engine'] = this.engine;
    } else {
      json[r'engine'] = null;
    }
    if (this.manageUrl != null) {
      json[r'manageUrl'] = this.manageUrl;
    } else {
      json[r'manageUrl'] = null;
    }
      json[r'switches'] = this.switches;
    return json;
  }

  /// Returns a new [BoardView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BoardView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BoardView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BoardView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BoardView(
        auditUrl: mapValueOfType<String>(json, r'auditUrl'),
        configured: mapValueOfType<bool>(json, r'configured'),
        engine: mapValueOfType<String>(json, r'engine'),
        manageUrl: mapValueOfType<String>(json, r'manageUrl'),
        switches: SwitchView.listFromJson(json[r'switches']),
      );
    }
    return null;
  }

  static List<BoardView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BoardView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BoardView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BoardView> mapFromJson(dynamic json) {
    final map = <String, BoardView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BoardView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BoardView-objects as value to a dart map
  static Map<String, List<BoardView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BoardView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BoardView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

