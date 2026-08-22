//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WireInstructions {
  /// Returns a new [WireInstructions] instance.
  WireInstructions({
    this.accountName,
    this.accountNumber,
    this.bankAddress,
    this.bankName,
    this.iban,
    this.memo,
    this.reference,
    this.routingNumber,
    this.swiftCode,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bankAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bankName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iban;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routingNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? swiftCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WireInstructions &&
    other.accountName == accountName &&
    other.accountNumber == accountNumber &&
    other.bankAddress == bankAddress &&
    other.bankName == bankName &&
    other.iban == iban &&
    other.memo == memo &&
    other.reference == reference &&
    other.routingNumber == routingNumber &&
    other.swiftCode == swiftCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountName == null ? 0 : accountName!.hashCode) +
    (accountNumber == null ? 0 : accountNumber!.hashCode) +
    (bankAddress == null ? 0 : bankAddress!.hashCode) +
    (bankName == null ? 0 : bankName!.hashCode) +
    (iban == null ? 0 : iban!.hashCode) +
    (memo == null ? 0 : memo!.hashCode) +
    (reference == null ? 0 : reference!.hashCode) +
    (routingNumber == null ? 0 : routingNumber!.hashCode) +
    (swiftCode == null ? 0 : swiftCode!.hashCode);

  @override
  String toString() => 'WireInstructions[accountName=$accountName, accountNumber=$accountNumber, bankAddress=$bankAddress, bankName=$bankName, iban=$iban, memo=$memo, reference=$reference, routingNumber=$routingNumber, swiftCode=$swiftCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
    if (this.accountNumber != null) {
      json[r'accountNumber'] = this.accountNumber;
    } else {
      json[r'accountNumber'] = null;
    }
    if (this.bankAddress != null) {
      json[r'bankAddress'] = this.bankAddress;
    } else {
      json[r'bankAddress'] = null;
    }
    if (this.bankName != null) {
      json[r'bankName'] = this.bankName;
    } else {
      json[r'bankName'] = null;
    }
    if (this.iban != null) {
      json[r'iban'] = this.iban;
    } else {
      json[r'iban'] = null;
    }
    if (this.memo != null) {
      json[r'memo'] = this.memo;
    } else {
      json[r'memo'] = null;
    }
    if (this.reference != null) {
      json[r'reference'] = this.reference;
    } else {
      json[r'reference'] = null;
    }
    if (this.routingNumber != null) {
      json[r'routingNumber'] = this.routingNumber;
    } else {
      json[r'routingNumber'] = null;
    }
    if (this.swiftCode != null) {
      json[r'swiftCode'] = this.swiftCode;
    } else {
      json[r'swiftCode'] = null;
    }
    return json;
  }

  /// Returns a new [WireInstructions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WireInstructions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WireInstructions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WireInstructions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WireInstructions(
        accountName: mapValueOfType<String>(json, r'accountName'),
        accountNumber: mapValueOfType<String>(json, r'accountNumber'),
        bankAddress: mapValueOfType<String>(json, r'bankAddress'),
        bankName: mapValueOfType<String>(json, r'bankName'),
        iban: mapValueOfType<String>(json, r'iban'),
        memo: mapValueOfType<String>(json, r'memo'),
        reference: mapValueOfType<String>(json, r'reference'),
        routingNumber: mapValueOfType<String>(json, r'routingNumber'),
        swiftCode: mapValueOfType<String>(json, r'swiftCode'),
      );
    }
    return null;
  }

  static List<WireInstructions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WireInstructions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WireInstructions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WireInstructions> mapFromJson(dynamic json) {
    final map = <String, WireInstructions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WireInstructions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WireInstructions-objects as value to a dart map
  static Map<String, List<WireInstructions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WireInstructions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WireInstructions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

