//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexerView {
  /// Returns a new [IndexerView] instance.
  IndexerView({
    this.chain,
    this.height,
    this.id,
    this.lag,
    this.network,
    this.status,
    this.updatedAt,
  });
  /// Chain is the chain this indexer indexes, as the indexer names it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  /// Height is the latest INDEXED block height, as a decimal string. Absent when nothing has been indexed yet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? height;

  /// ID identifies the indexer: its chain name, else its chain id, else the brand.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Lag is how far behind the chain HEAD this indexer is. The indexer REST does not expose the head, so it is always absent rather than a fabricated zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lag;

  /// Network is the deployment's network tier: mainnet, testnet or devnet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? network;

  /// Status is \"degraded\" when /health explicitly reports unhealthy, else \"active\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is the latest indexed block's timestamp, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexerView &&
    other.chain == chain &&
    other.height == height &&
    other.id == id &&
    other.lag == lag &&
    other.network == network &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chain == null ? 0 : chain!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (lag == null ? 0 : lag!.hashCode) +
    (network == null ? 0 : network!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'IndexerView[chain=$chain, height=$height, id=$id, lag=$lag, network=$network, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
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
    if (this.lag != null) {
      json[r'lag'] = this.lag;
    } else {
      json[r'lag'] = null;
    }
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [IndexerView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexerView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexerView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexerView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexerView(
        chain: mapValueOfType<String>(json, r'chain'),
        height: mapValueOfType<String>(json, r'height'),
        id: mapValueOfType<String>(json, r'id'),
        lag: mapValueOfType<String>(json, r'lag'),
        network: mapValueOfType<String>(json, r'network'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<IndexerView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexerView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexerView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexerView> mapFromJson(dynamic json) {
    final map = <String, IndexerView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexerView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexerView-objects as value to a dart map
  static Map<String, List<IndexerView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexerView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexerView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

