//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPodOnboarding {
  /// Returns a new [O11yO11yPodOnboarding] instance.
  O11yO11yPodOnboarding({
    this.clusterName,
    this.hasClusterName,
    this.hasCronjobName,
    this.hasDaemonsetName,
    this.hasDeploymentName,
    this.hasJobName,
    this.hasNamespaceName,
    this.hasNodeName,
    this.hasStatefulsetName,
    this.namespaceName,
    this.nodeName,
    this.podName,
  });

  /// ClusterName is the pod's cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterName;

  /// HasClusterName says whether the cluster label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasClusterName;

  /// HasCronjobName says whether the cronjob label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasCronjobName;

  /// HasDaemonsetName says whether the daemonset label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasDaemonsetName;

  /// HasDeploymentName says whether the deployment label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasDeploymentName;

  /// HasJobName says whether the job label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasJobName;

  /// HasNamespaceName says whether the namespace label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasNamespaceName;

  /// HasNodeName says whether the node label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasNodeName;

  /// HasStatefulsetName says whether the statefulset label is present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasStatefulsetName;

  /// NamespaceName is the pod's namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespaceName;

  /// NodeName is the pod's node.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeName;

  /// PodName is the pod.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? podName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPodOnboarding &&
    other.clusterName == clusterName &&
    other.hasClusterName == hasClusterName &&
    other.hasCronjobName == hasCronjobName &&
    other.hasDaemonsetName == hasDaemonsetName &&
    other.hasDeploymentName == hasDeploymentName &&
    other.hasJobName == hasJobName &&
    other.hasNamespaceName == hasNamespaceName &&
    other.hasNodeName == hasNodeName &&
    other.hasStatefulsetName == hasStatefulsetName &&
    other.namespaceName == namespaceName &&
    other.nodeName == nodeName &&
    other.podName == podName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterName == null ? 0 : clusterName!.hashCode) +
    (hasClusterName == null ? 0 : hasClusterName!.hashCode) +
    (hasCronjobName == null ? 0 : hasCronjobName!.hashCode) +
    (hasDaemonsetName == null ? 0 : hasDaemonsetName!.hashCode) +
    (hasDeploymentName == null ? 0 : hasDeploymentName!.hashCode) +
    (hasJobName == null ? 0 : hasJobName!.hashCode) +
    (hasNamespaceName == null ? 0 : hasNamespaceName!.hashCode) +
    (hasNodeName == null ? 0 : hasNodeName!.hashCode) +
    (hasStatefulsetName == null ? 0 : hasStatefulsetName!.hashCode) +
    (namespaceName == null ? 0 : namespaceName!.hashCode) +
    (nodeName == null ? 0 : nodeName!.hashCode) +
    (podName == null ? 0 : podName!.hashCode);

  @override
  String toString() => 'O11yO11yPodOnboarding[clusterName=$clusterName, hasClusterName=$hasClusterName, hasCronjobName=$hasCronjobName, hasDaemonsetName=$hasDaemonsetName, hasDeploymentName=$hasDeploymentName, hasJobName=$hasJobName, hasNamespaceName=$hasNamespaceName, hasNodeName=$hasNodeName, hasStatefulsetName=$hasStatefulsetName, namespaceName=$namespaceName, nodeName=$nodeName, podName=$podName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clusterName != null) {
      json[r'clusterName'] = this.clusterName;
    } else {
      json[r'clusterName'] = null;
    }
    if (this.hasClusterName != null) {
      json[r'hasClusterName'] = this.hasClusterName;
    } else {
      json[r'hasClusterName'] = null;
    }
    if (this.hasCronjobName != null) {
      json[r'hasCronjobName'] = this.hasCronjobName;
    } else {
      json[r'hasCronjobName'] = null;
    }
    if (this.hasDaemonsetName != null) {
      json[r'hasDaemonsetName'] = this.hasDaemonsetName;
    } else {
      json[r'hasDaemonsetName'] = null;
    }
    if (this.hasDeploymentName != null) {
      json[r'hasDeploymentName'] = this.hasDeploymentName;
    } else {
      json[r'hasDeploymentName'] = null;
    }
    if (this.hasJobName != null) {
      json[r'hasJobName'] = this.hasJobName;
    } else {
      json[r'hasJobName'] = null;
    }
    if (this.hasNamespaceName != null) {
      json[r'hasNamespaceName'] = this.hasNamespaceName;
    } else {
      json[r'hasNamespaceName'] = null;
    }
    if (this.hasNodeName != null) {
      json[r'hasNodeName'] = this.hasNodeName;
    } else {
      json[r'hasNodeName'] = null;
    }
    if (this.hasStatefulsetName != null) {
      json[r'hasStatefulsetName'] = this.hasStatefulsetName;
    } else {
      json[r'hasStatefulsetName'] = null;
    }
    if (this.namespaceName != null) {
      json[r'namespaceName'] = this.namespaceName;
    } else {
      json[r'namespaceName'] = null;
    }
    if (this.nodeName != null) {
      json[r'nodeName'] = this.nodeName;
    } else {
      json[r'nodeName'] = null;
    }
    if (this.podName != null) {
      json[r'podName'] = this.podName;
    } else {
      json[r'podName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yPodOnboarding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPodOnboarding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPodOnboarding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPodOnboarding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPodOnboarding(
        clusterName: mapValueOfType<String>(json, r'clusterName'),
        hasClusterName: mapValueOfType<bool>(json, r'hasClusterName'),
        hasCronjobName: mapValueOfType<bool>(json, r'hasCronjobName'),
        hasDaemonsetName: mapValueOfType<bool>(json, r'hasDaemonsetName'),
        hasDeploymentName: mapValueOfType<bool>(json, r'hasDeploymentName'),
        hasJobName: mapValueOfType<bool>(json, r'hasJobName'),
        hasNamespaceName: mapValueOfType<bool>(json, r'hasNamespaceName'),
        hasNodeName: mapValueOfType<bool>(json, r'hasNodeName'),
        hasStatefulsetName: mapValueOfType<bool>(json, r'hasStatefulsetName'),
        namespaceName: mapValueOfType<String>(json, r'namespaceName'),
        nodeName: mapValueOfType<String>(json, r'nodeName'),
        podName: mapValueOfType<String>(json, r'podName'),
      );
    }
    return null;
  }

  static List<O11yO11yPodOnboarding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPodOnboarding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPodOnboarding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPodOnboarding> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPodOnboarding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPodOnboarding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPodOnboarding-objects as value to a dart map
  static Map<String, List<O11yO11yPodOnboarding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPodOnboarding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPodOnboarding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

