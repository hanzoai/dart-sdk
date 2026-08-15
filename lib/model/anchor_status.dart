//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AnchorStatus {
  /// Returns a new [AnchorStatus] instance.
  AnchorStatus({
    this.chainId,
    this.contract,
    this.currentRoot,
    this.entryCount,
    this.lastAt,
    this.lastBlock,
    this.lastRoot,
    this.lastTxHash,
    this.note,
    this.rpcConfigured,
    this.signerConfigured,
    this.status,
    this.synced,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contract;

  /// 0x… root of the journal as it stands now
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentRoot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? entryCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastBlock;

  /// The last committed on-chain anchor (nil-fields until the first successful submit).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastRoot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastTxHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rpcConfigured;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? signerConfigured;

  /// pending | anchored | error
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// true when the last anchored root == the current root
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? synced;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnchorStatus &&
    other.chainId == chainId &&
    other.contract == contract &&
    other.currentRoot == currentRoot &&
    other.entryCount == entryCount &&
    other.lastAt == lastAt &&
    other.lastBlock == lastBlock &&
    other.lastRoot == lastRoot &&
    other.lastTxHash == lastTxHash &&
    other.note == note &&
    other.rpcConfigured == rpcConfigured &&
    other.signerConfigured == signerConfigured &&
    other.status == status &&
    other.synced == synced;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainId == null ? 0 : chainId!.hashCode) +
    (contract == null ? 0 : contract!.hashCode) +
    (currentRoot == null ? 0 : currentRoot!.hashCode) +
    (entryCount == null ? 0 : entryCount!.hashCode) +
    (lastAt == null ? 0 : lastAt!.hashCode) +
    (lastBlock == null ? 0 : lastBlock!.hashCode) +
    (lastRoot == null ? 0 : lastRoot!.hashCode) +
    (lastTxHash == null ? 0 : lastTxHash!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (rpcConfigured == null ? 0 : rpcConfigured!.hashCode) +
    (signerConfigured == null ? 0 : signerConfigured!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (synced == null ? 0 : synced!.hashCode);

  @override
  String toString() => 'AnchorStatus[chainId=$chainId, contract=$contract, currentRoot=$currentRoot, entryCount=$entryCount, lastAt=$lastAt, lastBlock=$lastBlock, lastRoot=$lastRoot, lastTxHash=$lastTxHash, note=$note, rpcConfigured=$rpcConfigured, signerConfigured=$signerConfigured, status=$status, synced=$synced]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainId != null) {
      json[r'chainId'] = this.chainId;
    } else {
      json[r'chainId'] = null;
    }
    if (this.contract != null) {
      json[r'contract'] = this.contract;
    } else {
      json[r'contract'] = null;
    }
    if (this.currentRoot != null) {
      json[r'currentRoot'] = this.currentRoot;
    } else {
      json[r'currentRoot'] = null;
    }
    if (this.entryCount != null) {
      json[r'entryCount'] = this.entryCount;
    } else {
      json[r'entryCount'] = null;
    }
    if (this.lastAt != null) {
      json[r'lastAt'] = this.lastAt;
    } else {
      json[r'lastAt'] = null;
    }
    if (this.lastBlock != null) {
      json[r'lastBlock'] = this.lastBlock;
    } else {
      json[r'lastBlock'] = null;
    }
    if (this.lastRoot != null) {
      json[r'lastRoot'] = this.lastRoot;
    } else {
      json[r'lastRoot'] = null;
    }
    if (this.lastTxHash != null) {
      json[r'lastTxHash'] = this.lastTxHash;
    } else {
      json[r'lastTxHash'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.rpcConfigured != null) {
      json[r'rpcConfigured'] = this.rpcConfigured;
    } else {
      json[r'rpcConfigured'] = null;
    }
    if (this.signerConfigured != null) {
      json[r'signerConfigured'] = this.signerConfigured;
    } else {
      json[r'signerConfigured'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.synced != null) {
      json[r'synced'] = this.synced;
    } else {
      json[r'synced'] = null;
    }
    return json;
  }

  /// Returns a new [AnchorStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnchorStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnchorStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnchorStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnchorStatus(
        chainId: mapValueOfType<int>(json, r'chainId'),
        contract: mapValueOfType<String>(json, r'contract'),
        currentRoot: mapValueOfType<String>(json, r'currentRoot'),
        entryCount: mapValueOfType<int>(json, r'entryCount'),
        lastAt: mapValueOfType<int>(json, r'lastAt'),
        lastBlock: mapValueOfType<int>(json, r'lastBlock'),
        lastRoot: mapValueOfType<String>(json, r'lastRoot'),
        lastTxHash: mapValueOfType<String>(json, r'lastTxHash'),
        note: mapValueOfType<String>(json, r'note'),
        rpcConfigured: mapValueOfType<bool>(json, r'rpcConfigured'),
        signerConfigured: mapValueOfType<bool>(json, r'signerConfigured'),
        status: mapValueOfType<String>(json, r'status'),
        synced: mapValueOfType<bool>(json, r'synced'),
      );
    }
    return null;
  }

  static List<AnchorStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnchorStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnchorStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnchorStatus> mapFromJson(dynamic json) {
    final map = <String, AnchorStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnchorStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnchorStatus-objects as value to a dart map
  static Map<String, List<AnchorStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnchorStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnchorStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

