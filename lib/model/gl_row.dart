//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GLRow {
  /// Returns a new [GLRow] instance.
  GLRow({
    this.account,
    this.against,
    this.credit,
    this.debit,
    this.id,
    this.postingAt,
    this.remarks,
    this.sourceId,
    this.sourceKind,
  });
  /// Account is the chart-of-accounts number this leg posts to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Against names the OTHER accounts in the same voucher — the contra side of this leg — so a single row reads as an entry rather than as half of one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? against;

  /// Credit is the amount credited to that account, in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? credit;

  /// Debit is the amount debited to that account, in whole cents. Exactly one of debit and credit is non-zero on a leg; a negative amount is never used to mean the other side.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? debit;

  /// ID is the entry's position in the ledger. The ledger is append-only, so ids ascend with posting order and a higher id is a later entry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// PostingAt is the accounting date this entry belongs to — what the reports window on, which need not be when the row was written.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postingAt;

  /// Remarks is the memo carried onto the entry, for a human reading the ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remarks;

  /// SourceID identifies that originating record within its kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  /// SourceKind is what caused the posting: a bank line, a scanned document, a commerce sale. With sourceId it traces the entry back to the thing that produced it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceKind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GLRow &&
    other.account == account &&
    other.against == against &&
    other.credit == credit &&
    other.debit == debit &&
    other.id == id &&
    other.postingAt == postingAt &&
    other.remarks == remarks &&
    other.sourceId == sourceId &&
    other.sourceKind == sourceKind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (against == null ? 0 : against!.hashCode) +
    (credit == null ? 0 : credit!.hashCode) +
    (debit == null ? 0 : debit!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (postingAt == null ? 0 : postingAt!.hashCode) +
    (remarks == null ? 0 : remarks!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (sourceKind == null ? 0 : sourceKind!.hashCode);

  @override
  String toString() => 'GLRow[account=$account, against=$against, credit=$credit, debit=$debit, id=$id, postingAt=$postingAt, remarks=$remarks, sourceId=$sourceId, sourceKind=$sourceKind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.against != null) {
      json[r'against'] = this.against;
    } else {
      json[r'against'] = null;
    }
    if (this.credit != null) {
      json[r'credit'] = this.credit;
    } else {
      json[r'credit'] = null;
    }
    if (this.debit != null) {
      json[r'debit'] = this.debit;
    } else {
      json[r'debit'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.postingAt != null) {
      json[r'postingAt'] = this.postingAt;
    } else {
      json[r'postingAt'] = null;
    }
    if (this.remarks != null) {
      json[r'remarks'] = this.remarks;
    } else {
      json[r'remarks'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    if (this.sourceKind != null) {
      json[r'sourceKind'] = this.sourceKind;
    } else {
      json[r'sourceKind'] = null;
    }
    return json;
  }

  /// Returns a new [GLRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GLRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GLRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GLRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GLRow(
        account: mapValueOfType<String>(json, r'account'),
        against: mapValueOfType<String>(json, r'against'),
        credit: mapValueOfType<int>(json, r'credit'),
        debit: mapValueOfType<int>(json, r'debit'),
        id: mapValueOfType<int>(json, r'id'),
        postingAt: mapValueOfType<String>(json, r'postingAt'),
        remarks: mapValueOfType<String>(json, r'remarks'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
        sourceKind: mapValueOfType<String>(json, r'sourceKind'),
      );
    }
    return null;
  }

  static List<GLRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GLRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GLRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GLRow> mapFromJson(dynamic json) {
    final map = <String, GLRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GLRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GLRow-objects as value to a dart map
  static Map<String, List<GLRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GLRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GLRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

