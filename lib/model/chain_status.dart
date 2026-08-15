//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChainStatus {
  /// Returns a new [ChainStatus] instance.
  ChainStatus({
    this.chainId,
    this.height,
    this.id,
    this.live,
    this.name,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chainId;

  /// Height is the latest block, omitted when the chain did not answer rather than reported as zero — a zero height is a real value on a fresh chain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Live is whether the upstream answered eth_blockNumber.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? live;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChainStatus &&
    other.chainId == chainId &&
    other.height == height &&
    other.id == id &&
    other.live == live &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainId == null ? 0 : chainId!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (live == null ? 0 : live!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ChainStatus[chainId=$chainId, height=$height, id=$id, live=$live, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainId != null) {
      json[r'chainId'] = this.chainId;
    } else {
      json[r'chainId'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.live != null) {
      json[r'live'] = this.live;
    } else {
      json[r'live'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ChainStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChainStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChainStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChainStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChainStatus(
        chainId: mapValueOfType<int>(json, r'chainId'),
        height: mapValueOfType<int>(json, r'height'),
        id: mapValueOfType<String>(json, r'id'),
        live: mapValueOfType<bool>(json, r'live'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ChainStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChainStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChainStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChainStatus> mapFromJson(dynamic json) {
    final map = <String, ChainStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChainStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChainStatus-objects as value to a dart map
  static Map<String, List<ChainStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChainStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChainStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

