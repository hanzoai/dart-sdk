//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiModelInfo {
  /// Returns a new [AiModelInfo] instance.
  AiModelInfo({
    this.access,
    this.contextWindow,
    this.created,
    this.id,
    this.maxOutputTokens,
    this.object,
    this.outputs = const [],
    this.ownedBy,
    this.premium,
    this.pricing,
    this.provider,
    this.supportsTools,
    this.supportsVision,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiModelAccessInfo? access;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contextWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxOutputTokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? object;

  List<String> outputs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? premium;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiModelPricingInfo? pricing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supportsTools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supportsVision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiModelInfo &&
    other.access == access &&
    other.contextWindow == contextWindow &&
    other.created == created &&
    other.id == id &&
    other.maxOutputTokens == maxOutputTokens &&
    other.object == object &&
    _deepEquality.equals(other.outputs, outputs) &&
    other.ownedBy == ownedBy &&
    other.premium == premium &&
    other.pricing == pricing &&
    other.provider == provider &&
    other.supportsTools == supportsTools &&
    other.supportsVision == supportsVision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (access == null ? 0 : access!.hashCode) +
    (contextWindow == null ? 0 : contextWindow!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (maxOutputTokens == null ? 0 : maxOutputTokens!.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (outputs.hashCode) +
    (ownedBy == null ? 0 : ownedBy!.hashCode) +
    (premium == null ? 0 : premium!.hashCode) +
    (pricing == null ? 0 : pricing!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (supportsTools == null ? 0 : supportsTools!.hashCode) +
    (supportsVision == null ? 0 : supportsVision!.hashCode);

  @override
  String toString() => 'AiModelInfo[access=$access, contextWindow=$contextWindow, created=$created, id=$id, maxOutputTokens=$maxOutputTokens, object=$object, outputs=$outputs, ownedBy=$ownedBy, premium=$premium, pricing=$pricing, provider=$provider, supportsTools=$supportsTools, supportsVision=$supportsVision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.access != null) {
      json[r'access'] = this.access;
    } else {
      json[r'access'] = null;
    }
    if (this.contextWindow != null) {
      json[r'context_window'] = this.contextWindow;
    } else {
      json[r'context_window'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.maxOutputTokens != null) {
      json[r'max_output_tokens'] = this.maxOutputTokens;
    } else {
      json[r'max_output_tokens'] = null;
    }
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
      json[r'outputs'] = this.outputs;
    if (this.ownedBy != null) {
      json[r'owned_by'] = this.ownedBy;
    } else {
      json[r'owned_by'] = null;
    }
    if (this.premium != null) {
      json[r'premium'] = this.premium;
    } else {
      json[r'premium'] = null;
    }
    if (this.pricing != null) {
      json[r'pricing'] = this.pricing;
    } else {
      json[r'pricing'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.supportsTools != null) {
      json[r'supports_tools'] = this.supportsTools;
    } else {
      json[r'supports_tools'] = null;
    }
    if (this.supportsVision != null) {
      json[r'supports_vision'] = this.supportsVision;
    } else {
      json[r'supports_vision'] = null;
    }
    return json;
  }

  /// Returns a new [AiModelInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiModelInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiModelInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiModelInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiModelInfo(
        access: AiModelAccessInfo.fromJson(json[r'access']),
        contextWindow: mapValueOfType<int>(json, r'context_window'),
        created: mapValueOfType<int>(json, r'created'),
        id: mapValueOfType<String>(json, r'id'),
        maxOutputTokens: mapValueOfType<int>(json, r'max_output_tokens'),
        object: mapValueOfType<String>(json, r'object'),
        outputs: json[r'outputs'] is Iterable
            ? (json[r'outputs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ownedBy: mapValueOfType<String>(json, r'owned_by'),
        premium: mapValueOfType<bool>(json, r'premium'),
        pricing: AiModelPricingInfo.fromJson(json[r'pricing']),
        provider: mapValueOfType<String>(json, r'provider'),
        supportsTools: mapValueOfType<bool>(json, r'supports_tools'),
        supportsVision: mapValueOfType<bool>(json, r'supports_vision'),
      );
    }
    return null;
  }

  static List<AiModelInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiModelInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiModelInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiModelInfo> mapFromJson(dynamic json) {
    final map = <String, AiModelInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiModelInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiModelInfo-objects as value to a dart map
  static Map<String, List<AiModelInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiModelInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiModelInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

