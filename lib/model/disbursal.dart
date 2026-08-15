//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Disbursal {
  /// Returns a new [Disbursal] instance.
  Disbursal({
    this.amountCents,
    this.id,
    this.method,
    this.reference,
  });

  /// AmountCents is the payout, integer cents; it must be positive and can never exceed the affiliate's pending commission. Body-only (`url:\"-\"`, like every money field here): a payout must never ride the URL into access logs, and the raw handler read only the body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// ID is the affiliate to pay, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Method decides whether money moves: `credits` issues a commerce grant, every other method (wire, paypal, …) is record-only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Reference is the operator's settlement note (a bank id, a ledger ref).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Disbursal &&
    other.amountCents == amountCents &&
    other.id == id &&
    other.method == method &&
    other.reference == reference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (reference == null ? 0 : reference!.hashCode);

  @override
  String toString() => 'Disbursal[amountCents=$amountCents, id=$id, method=$method, reference=$reference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.reference != null) {
      json[r'reference'] = this.reference;
    } else {
      json[r'reference'] = null;
    }
    return json;
  }

  /// Returns a new [Disbursal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Disbursal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Disbursal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Disbursal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Disbursal(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        id: mapValueOfType<String>(json, r'id'),
        method: mapValueOfType<String>(json, r'method'),
        reference: mapValueOfType<String>(json, r'reference'),
      );
    }
    return null;
  }

  static List<Disbursal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Disbursal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Disbursal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Disbursal> mapFromJson(dynamic json) {
    final map = <String, Disbursal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Disbursal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Disbursal-objects as value to a dart map
  static Map<String, List<Disbursal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Disbursal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Disbursal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

