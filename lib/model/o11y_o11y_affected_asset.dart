//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAffectedAsset {
  /// Returns a new [O11yO11yAffectedAsset] instance.
  O11yO11yAffectedAsset({
    this.id,
    this.impactedLabels = const [],
    this.name,
    this.type,
    this.widget,
  });

  /// ID is the asset's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ImpactedLabels are the rule labels the asset uses.
  List<String> impactedLabels;

  /// Name is the asset's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Type is dashboard or alert_rule.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Widget is the affected panel, for a dashboard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAffectedWidget? widget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAffectedAsset &&
    other.id == id &&
    _deepEquality.equals(other.impactedLabels, impactedLabels) &&
    other.name == name &&
    other.type == type &&
    other.widget == widget;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (impactedLabels.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (widget == null ? 0 : widget!.hashCode);

  @override
  String toString() => 'O11yO11yAffectedAsset[id=$id, impactedLabels=$impactedLabels, name=$name, type=$type, widget=$widget]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'impactedLabels'] = this.impactedLabels;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.widget != null) {
      json[r'widget'] = this.widget;
    } else {
      json[r'widget'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yAffectedAsset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAffectedAsset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAffectedAsset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAffectedAsset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAffectedAsset(
        id: mapValueOfType<String>(json, r'id'),
        impactedLabels: json[r'impactedLabels'] is Iterable
            ? (json[r'impactedLabels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
        widget: O11yO11yAffectedWidget.fromJson(json[r'widget']),
      );
    }
    return null;
  }

  static List<O11yO11yAffectedAsset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAffectedAsset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAffectedAsset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAffectedAsset> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAffectedAsset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAffectedAsset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAffectedAsset-objects as value to a dart map
  static Map<String, List<O11yO11yAffectedAsset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAffectedAsset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAffectedAsset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

