//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SafeTxIn {
  /// Returns a new [SafeTxIn] instance.
  SafeTxIn({
    this.chainId,
    this.data,
    this.nonce,
    this.to,
    this.value,
  });

  /// ChainID is the EVM chain the Safe transaction is bound to. 0 uses the wallet's own chain, or the Hanzo L1 (36963) when it is chain-agnostic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chainId;

  /// Data is the call data, hex-encoded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  /// Nonce is the Safe's transaction nonce.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nonce;

  /// To is the transaction's target address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  /// Value is the native-token amount to send, as a decimal string in wei.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SafeTxIn &&
    other.chainId == chainId &&
    other.data == data &&
    other.nonce == nonce &&
    other.to == to &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainId == null ? 0 : chainId!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'SafeTxIn[chainId=$chainId, data=$data, nonce=$nonce, to=$to, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainId != null) {
      json[r'chainId'] = this.chainId;
    } else {
      json[r'chainId'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [SafeTxIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SafeTxIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SafeTxIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SafeTxIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SafeTxIn(
        chainId: mapValueOfType<int>(json, r'chainId'),
        data: mapValueOfType<String>(json, r'data'),
        nonce: mapValueOfType<int>(json, r'nonce'),
        to: mapValueOfType<String>(json, r'to'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<SafeTxIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SafeTxIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SafeTxIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SafeTxIn> mapFromJson(dynamic json) {
    final map = <String, SafeTxIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SafeTxIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SafeTxIn-objects as value to a dart map
  static Map<String, List<SafeTxIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SafeTxIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SafeTxIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

