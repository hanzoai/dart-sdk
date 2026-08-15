//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Genesis {
  /// Returns a new [Genesis] instance.
  Genesis({
    this.at,
    this.block,
    this.chainId,
    this.note,
    this.root,
    this.status,
    this.txHash,
  });

  /// At is the unix second the genesis root was computed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? at;

  /// Block is the L1 block the anchoring transaction landed in. Set only once the receipt has been read; absent otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? block;

  /// ChainID is the EVM chain the root is committed to — the Hanzo L1 by default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chainId;

  /// Note explains an unanchored genesis honestly — anchor wiring absent, or the submit error — rather than reporting a commit that did not happen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Root is the 0x-prefixed keccak256 root of the founding allocation. It is ALWAYS computed, whether or not the on-chain anchor is wired, because the root is the tamper-evident witness.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? root;

  /// Status is pending (root computed, not yet on-chain) or anchored (committed).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// TxHash is the L1 transaction hash of the anchoring commit. Empty until anchored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? txHash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Genesis &&
    other.at == at &&
    other.block == block &&
    other.chainId == chainId &&
    other.note == note &&
    other.root == root &&
    other.status == status &&
    other.txHash == txHash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (block == null ? 0 : block!.hashCode) +
    (chainId == null ? 0 : chainId!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (root == null ? 0 : root!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (txHash == null ? 0 : txHash!.hashCode);

  @override
  String toString() => 'Genesis[at=$at, block=$block, chainId=$chainId, note=$note, root=$root, status=$status, txHash=$txHash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.block != null) {
      json[r'block'] = this.block;
    } else {
      json[r'block'] = null;
    }
    if (this.chainId != null) {
      json[r'chainId'] = this.chainId;
    } else {
      json[r'chainId'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.root != null) {
      json[r'root'] = this.root;
    } else {
      json[r'root'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.txHash != null) {
      json[r'txHash'] = this.txHash;
    } else {
      json[r'txHash'] = null;
    }
    return json;
  }

  /// Returns a new [Genesis] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Genesis? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Genesis[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Genesis[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Genesis(
        at: mapValueOfType<int>(json, r'at'),
        block: mapValueOfType<int>(json, r'block'),
        chainId: mapValueOfType<int>(json, r'chainId'),
        note: mapValueOfType<String>(json, r'note'),
        root: mapValueOfType<String>(json, r'root'),
        status: mapValueOfType<String>(json, r'status'),
        txHash: mapValueOfType<String>(json, r'txHash'),
      );
    }
    return null;
  }

  static List<Genesis> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Genesis>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Genesis.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Genesis> mapFromJson(dynamic json) {
    final map = <String, Genesis>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Genesis.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Genesis-objects as value to a dart map
  static Map<String, List<Genesis>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Genesis>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Genesis.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

