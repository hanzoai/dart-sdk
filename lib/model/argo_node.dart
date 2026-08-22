//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoNode {
  /// Returns a new [ArgoNode] instance.
  ArgoNode({
    this.createdAt,
    this.group,
    this.health,
    this.images = const [],
    this.info = const [],
    this.kind,
    this.name,
    this.namespace,
    this.parentRefs = const [],
    this.resourceVersion,
    this.uid,
    this.version,
  });
  /// CreatedAt is the object's creationTimestamp, RFC 3339 UTC to the second. Absent when the object carries none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? group;

  /// Health is the node's own derived health. Always present on a node of this tree; a kind with no health signal of its own reports Healthy, since a ConfigMap existing IS its healthy state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArgoHealth? health;

  /// Images are the container images running on this node. Always absent — the tag travels as the \"Image Tag\" chip in Info instead, which is where the SPA reads it on a node.
  List<String> images;

  /// Info are the chips shown on the node. At most one: the image tag — the RUNNING tag on a Deployment, ReplicaSet or Pod, and the DECLARED tag on the App CR at the root. Absent on a node that carries no image at all.
  List<ArgoInfoItem> info;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// ParentRefs are the node's edges UPWARD, which is how the SPA draws the DAG from this flat list. Exactly one entry where present: a depth-1 object points at the App CR, a ReplicaSet at its Deployment, a Pod at its ReplicaSet (or at the Deployment whose selector matches it, when the ReplicaSet is gone). Absent on the root.
  List<ArgoResourceRef> parentRefs;

  /// ResourceVersion is the k8s version a watch would resume from. Always empty: the tree is rebuilt from live reads on every request, including on every frame of the SSE stream, so there is no revision to resume from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoNode &&
    other.createdAt == createdAt &&
    other.group == group &&
    other.health == health &&
    _deepEquality.equals(other.images, images) &&
    _deepEquality.equals(other.info, info) &&
    other.kind == kind &&
    other.name == name &&
    other.namespace == namespace &&
    _deepEquality.equals(other.parentRefs, parentRefs) &&
    other.resourceVersion == resourceVersion &&
    other.uid == uid &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (group == null ? 0 : group!.hashCode) +
    (health == null ? 0 : health!.hashCode) +
    (images.hashCode) +
    (info.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (parentRefs.hashCode) +
    (resourceVersion == null ? 0 : resourceVersion!.hashCode) +
    (uid == null ? 0 : uid!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ArgoNode[createdAt=$createdAt, group=$group, health=$health, images=$images, info=$info, kind=$kind, name=$name, namespace=$namespace, parentRefs=$parentRefs, resourceVersion=$resourceVersion, uid=$uid, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
      json[r'images'] = this.images;
      json[r'info'] = this.info;
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
      json[r'parentRefs'] = this.parentRefs;
    if (this.resourceVersion != null) {
      json[r'resourceVersion'] = this.resourceVersion;
    } else {
      json[r'resourceVersion'] = null;
    }
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoNode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoNode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoNode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoNode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoNode(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        group: mapValueOfType<String>(json, r'group'),
        health: ArgoHealth.fromJson(json[r'health']),
        images: json[r'images'] is Iterable
            ? (json[r'images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        info: ArgoInfoItem.listFromJson(json[r'info']),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        parentRefs: ArgoResourceRef.listFromJson(json[r'parentRefs']),
        resourceVersion: mapValueOfType<String>(json, r'resourceVersion'),
        uid: mapValueOfType<String>(json, r'uid'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ArgoNode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoNode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoNode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoNode> mapFromJson(dynamic json) {
    final map = <String, ArgoNode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoNode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoNode-objects as value to a dart map
  static Map<String, List<ArgoNode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoNode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoNode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

