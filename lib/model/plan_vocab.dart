//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanVocab {
  /// Returns a new [PlanVocab] instance.
  PlanVocab({
    this.engineFeatures = const [],
    this.keys = const {},
    this.namespaces = const [],
  });

  /// EngineFeatures are the inference-engine capabilities a license can grant: inference, embeddings, rerank, training, vision, audio, tools.
  List<String> engineFeatures;

  /// Keys maps every entitlement key to its descriptor — key, namespace, JSON type(s), nullability, unit, enum and title, as the schema declares them.
  Map<String, Object> keys;

  /// Namespaces are the entitlement key namespaces: the prefix before the dot in \"ai.tokens_per_min\".
  List<String> namespaces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanVocab &&
    _deepEquality.equals(other.engineFeatures, engineFeatures) &&
    _deepEquality.equals(other.keys, keys) &&
    _deepEquality.equals(other.namespaces, namespaces);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (engineFeatures.hashCode) +
    (keys.hashCode) +
    (namespaces.hashCode);

  @override
  String toString() => 'PlanVocab[engineFeatures=$engineFeatures, keys=$keys, namespaces=$namespaces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'engine_features'] = this.engineFeatures;
      json[r'keys'] = this.keys;
      json[r'namespaces'] = this.namespaces;
    return json;
  }

  /// Returns a new [PlanVocab] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanVocab? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanVocab[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanVocab[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanVocab(
        engineFeatures: json[r'engine_features'] is Iterable
            ? (json[r'engine_features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        keys: mapCastOfType<String, Object>(json, r'keys') ?? const {},
        namespaces: json[r'namespaces'] is Iterable
            ? (json[r'namespaces'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PlanVocab> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanVocab>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanVocab.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanVocab> mapFromJson(dynamic json) {
    final map = <String, PlanVocab>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanVocab.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanVocab-objects as value to a dart map
  static Map<String, List<PlanVocab>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanVocab>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanVocab.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

