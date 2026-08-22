//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SlotView {
  /// Returns a new [SlotView] instance.
  SlotView({
    this.blsPubkey,
    this.crName,
    this.createdAt,
    this.namespace,
    this.network,
    this.nodeID,
    this.nodeStatus,
    this.registration,
    this.slot,
    this.tokenId,
    this.updatedAt,
    this.wallet,
  });
  /// BLSPubkey is the node's BLS public key, hex.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blsPubkey;

  /// CRName is the LuxNetwork custom resource that materializes the node.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crName;

  /// CreatedAt is when the slot was first claimed, as a Unix timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Namespace is the Kubernetes namespace the node's CR lives in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// Network is the luxd network slug the node joins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? network;

  /// NodeID is the luxd node id derived from the sealed staking identity. It is stable across re-claims of the same slot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeID;

  /// NodeStatus is the provisioning state of the node: \"node_created\" once the CR is applied, \"node_pending\" when no cluster is reachable (the slot is still claimed and the keys are still sealed).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeStatus;

  /// Registration is the queued owner-gated registration, absent until one exists.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RegistrationView? registration;

  /// Slot is the validator slot number — the same value as tokenId, under the name the portal reads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slot;

  /// TokenID is the GenesisNFT token id that IS this slot.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenId;

  /// UpdatedAt is when the slot last changed, as a Unix timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// Wallet is the lowercase Ethereum address that proved ownership of the NFT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wallet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlotView &&
    other.blsPubkey == blsPubkey &&
    other.crName == crName &&
    other.createdAt == createdAt &&
    other.namespace == namespace &&
    other.network == network &&
    other.nodeID == nodeID &&
    other.nodeStatus == nodeStatus &&
    other.registration == registration &&
    other.slot == slot &&
    other.tokenId == tokenId &&
    other.updatedAt == updatedAt &&
    other.wallet == wallet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blsPubkey == null ? 0 : blsPubkey!.hashCode) +
    (crName == null ? 0 : crName!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (network == null ? 0 : network!.hashCode) +
    (nodeID == null ? 0 : nodeID!.hashCode) +
    (nodeStatus == null ? 0 : nodeStatus!.hashCode) +
    (registration == null ? 0 : registration!.hashCode) +
    (slot == null ? 0 : slot!.hashCode) +
    (tokenId == null ? 0 : tokenId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (wallet == null ? 0 : wallet!.hashCode);

  @override
  String toString() => 'SlotView[blsPubkey=$blsPubkey, crName=$crName, createdAt=$createdAt, namespace=$namespace, network=$network, nodeID=$nodeID, nodeStatus=$nodeStatus, registration=$registration, slot=$slot, tokenId=$tokenId, updatedAt=$updatedAt, wallet=$wallet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blsPubkey != null) {
      json[r'blsPubkey'] = this.blsPubkey;
    } else {
      json[r'blsPubkey'] = null;
    }
    if (this.crName != null) {
      json[r'crName'] = this.crName;
    } else {
      json[r'crName'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.nodeID != null) {
      json[r'nodeID'] = this.nodeID;
    } else {
      json[r'nodeID'] = null;
    }
    if (this.nodeStatus != null) {
      json[r'nodeStatus'] = this.nodeStatus;
    } else {
      json[r'nodeStatus'] = null;
    }
    if (this.registration != null) {
      json[r'registration'] = this.registration;
    } else {
      json[r'registration'] = null;
    }
    if (this.slot != null) {
      json[r'slot'] = this.slot;
    } else {
      json[r'slot'] = null;
    }
    if (this.tokenId != null) {
      json[r'tokenId'] = this.tokenId;
    } else {
      json[r'tokenId'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.wallet != null) {
      json[r'wallet'] = this.wallet;
    } else {
      json[r'wallet'] = null;
    }
    return json;
  }

  /// Returns a new [SlotView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlotView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SlotView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SlotView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SlotView(
        blsPubkey: mapValueOfType<String>(json, r'blsPubkey'),
        crName: mapValueOfType<String>(json, r'crName'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        network: mapValueOfType<String>(json, r'network'),
        nodeID: mapValueOfType<String>(json, r'nodeID'),
        nodeStatus: mapValueOfType<String>(json, r'nodeStatus'),
        registration: RegistrationView.fromJson(json[r'registration']),
        slot: mapValueOfType<int>(json, r'slot'),
        tokenId: mapValueOfType<int>(json, r'tokenId'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        wallet: mapValueOfType<String>(json, r'wallet'),
      );
    }
    return null;
  }

  static List<SlotView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlotView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlotView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlotView> mapFromJson(dynamic json) {
    final map = <String, SlotView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlotView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlotView-objects as value to a dart map
  static Map<String, List<SlotView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlotView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlotView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

