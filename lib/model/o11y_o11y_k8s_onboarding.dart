//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yK8sOnboarding {
  /// Returns a new [O11yO11yK8sOnboarding] instance.
  O11yO11yK8sOnboarding({
    this.didSendClusterMetrics,
    this.didSendNodeMetrics,
    this.didSendPodMetrics,
    this.isSendingOptionalPodMetrics,
    this.isSendingRequiredMetadata = const [],
  });
  /// DidSendClusterMetrics says whether cluster metrics have arrived.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? didSendClusterMetrics;

  /// DidSendNodeMetrics says whether node metrics have arrived.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? didSendNodeMetrics;

  /// DidSendPodMetrics says whether pod metrics have arrived.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? didSendPodMetrics;

  /// IsSendingOptionalPodMetrics says whether optional pod metrics are flowing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSendingOptionalPodMetrics;

  /// IsSendingRequiredMetadata reports, per pod, which required metadata labels are present.
  List<O11yO11yPodOnboarding> isSendingRequiredMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yK8sOnboarding &&
    other.didSendClusterMetrics == didSendClusterMetrics &&
    other.didSendNodeMetrics == didSendNodeMetrics &&
    other.didSendPodMetrics == didSendPodMetrics &&
    other.isSendingOptionalPodMetrics == isSendingOptionalPodMetrics &&
    _deepEquality.equals(other.isSendingRequiredMetadata, isSendingRequiredMetadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (didSendClusterMetrics == null ? 0 : didSendClusterMetrics!.hashCode) +
    (didSendNodeMetrics == null ? 0 : didSendNodeMetrics!.hashCode) +
    (didSendPodMetrics == null ? 0 : didSendPodMetrics!.hashCode) +
    (isSendingOptionalPodMetrics == null ? 0 : isSendingOptionalPodMetrics!.hashCode) +
    (isSendingRequiredMetadata.hashCode);

  @override
  String toString() => 'O11yO11yK8sOnboarding[didSendClusterMetrics=$didSendClusterMetrics, didSendNodeMetrics=$didSendNodeMetrics, didSendPodMetrics=$didSendPodMetrics, isSendingOptionalPodMetrics=$isSendingOptionalPodMetrics, isSendingRequiredMetadata=$isSendingRequiredMetadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.didSendClusterMetrics != null) {
      json[r'didSendClusterMetrics'] = this.didSendClusterMetrics;
    } else {
      json[r'didSendClusterMetrics'] = null;
    }
    if (this.didSendNodeMetrics != null) {
      json[r'didSendNodeMetrics'] = this.didSendNodeMetrics;
    } else {
      json[r'didSendNodeMetrics'] = null;
    }
    if (this.didSendPodMetrics != null) {
      json[r'didSendPodMetrics'] = this.didSendPodMetrics;
    } else {
      json[r'didSendPodMetrics'] = null;
    }
    if (this.isSendingOptionalPodMetrics != null) {
      json[r'isSendingOptionalPodMetrics'] = this.isSendingOptionalPodMetrics;
    } else {
      json[r'isSendingOptionalPodMetrics'] = null;
    }
      json[r'isSendingRequiredMetadata'] = this.isSendingRequiredMetadata;
    return json;
  }

  /// Returns a new [O11yO11yK8sOnboarding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yK8sOnboarding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yK8sOnboarding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yK8sOnboarding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yK8sOnboarding(
        didSendClusterMetrics: mapValueOfType<bool>(json, r'didSendClusterMetrics'),
        didSendNodeMetrics: mapValueOfType<bool>(json, r'didSendNodeMetrics'),
        didSendPodMetrics: mapValueOfType<bool>(json, r'didSendPodMetrics'),
        isSendingOptionalPodMetrics: mapValueOfType<bool>(json, r'isSendingOptionalPodMetrics'),
        isSendingRequiredMetadata: O11yO11yPodOnboarding.listFromJson(json[r'isSendingRequiredMetadata']),
      );
    }
    return null;
  }

  static List<O11yO11yK8sOnboarding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yK8sOnboarding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yK8sOnboarding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yK8sOnboarding> mapFromJson(dynamic json) {
    final map = <String, O11yO11yK8sOnboarding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yK8sOnboarding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yK8sOnboarding-objects as value to a dart map
  static Map<String, List<O11yO11yK8sOnboarding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yK8sOnboarding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yK8sOnboarding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

