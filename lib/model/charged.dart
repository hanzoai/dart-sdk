//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Charged {
  /// Returns a new [Charged] instance.
  Charged({
    this.balanceCents,
    this.processorRef,
    this.status,
    this.test,
    this.transactionId,
  });
  /// BalanceCents is the subject's balance AFTER the charge settled, in cents, so a caller does not have to re-read to show the new number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

  /// ProcessorRef is the payment processor's own reference. It is the only field that proves money moved at the GATEWAY rather than merely in our ledger, which is why it is answered and not only logged. Absent where the processor returned none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processorRef;

  /// Status is how the charge ended. Read it rather than inferring success from the HTTP status: the call succeeded whenever this field is present, and what the PROCESSOR did is what this says.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Test states which bucket was credited — sandbox money or real money — so no reader has to guess whether a receipt is real. Sandbox and live funds are physically separate ledgers, and a reader that conflates them restates the company's revenue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? test;

  /// TransactionID is the ledger entry this charge created. It is the handle a later read or a refund names, and it is minted by the ledger rather than by the caller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Charged &&
    other.balanceCents == balanceCents &&
    other.processorRef == processorRef &&
    other.status == status &&
    other.test == test &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (processorRef == null ? 0 : processorRef!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (test == null ? 0 : test!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'Charged[balanceCents=$balanceCents, processorRef=$processorRef, status=$status, test=$test, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.processorRef != null) {
      json[r'processorRef'] = this.processorRef;
    } else {
      json[r'processorRef'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.test != null) {
      json[r'test'] = this.test;
    } else {
      json[r'test'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    return json;
  }

  /// Returns a new [Charged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Charged? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Charged[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Charged[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Charged(
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        processorRef: mapValueOfType<String>(json, r'processorRef'),
        status: mapValueOfType<String>(json, r'status'),
        test: mapValueOfType<bool>(json, r'test'),
        transactionId: mapValueOfType<String>(json, r'transactionId'),
      );
    }
    return null;
  }

  static List<Charged> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Charged>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Charged.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Charged> mapFromJson(dynamic json) {
    final map = <String, Charged>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Charged.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Charged-objects as value to a dart map
  static Map<String, List<Charged>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Charged>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Charged.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

