//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NodePoolView {
  /// Returns a new [NodePoolView] instance.
  NodePoolView({
    this.autoScale,
    this.count,
    this.maxNodes,
    this.minNodes,
    this.name,
    this.poolId,
    this.size,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoScale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxNodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minNodes;

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
  String? poolId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NodePoolView &&
    other.autoScale == autoScale &&
    other.count == count &&
    other.maxNodes == maxNodes &&
    other.minNodes == minNodes &&
    other.name == name &&
    other.poolId == poolId &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (autoScale == null ? 0 : autoScale!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (maxNodes == null ? 0 : maxNodes!.hashCode) +
    (minNodes == null ? 0 : minNodes!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (poolId == null ? 0 : poolId!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'NodePoolView[autoScale=$autoScale, count=$count, maxNodes=$maxNodes, minNodes=$minNodes, name=$name, poolId=$poolId, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.autoScale != null) {
      json[r'autoScale'] = this.autoScale;
    } else {
      json[r'autoScale'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.maxNodes != null) {
      json[r'maxNodes'] = this.maxNodes;
    } else {
      json[r'maxNodes'] = null;
    }
    if (this.minNodes != null) {
      json[r'minNodes'] = this.minNodes;
    } else {
      json[r'minNodes'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.poolId != null) {
      json[r'poolId'] = this.poolId;
    } else {
      json[r'poolId'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [NodePoolView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodePoolView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NodePoolView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NodePoolView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodePoolView(
        autoScale: mapValueOfType<bool>(json, r'autoScale'),
        count: mapValueOfType<int>(json, r'count'),
        maxNodes: mapValueOfType<int>(json, r'maxNodes'),
        minNodes: mapValueOfType<int>(json, r'minNodes'),
        name: mapValueOfType<String>(json, r'name'),
        poolId: mapValueOfType<String>(json, r'poolId'),
        size: mapValueOfType<String>(json, r'size'),
      );
    }
    return null;
  }

  static List<NodePoolView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodePoolView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodePoolView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodePoolView> mapFromJson(dynamic json) {
    final map = <String, NodePoolView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodePoolView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodePoolView-objects as value to a dart map
  static Map<String, List<NodePoolView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NodePoolView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodePoolView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

