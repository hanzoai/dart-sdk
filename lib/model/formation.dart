//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Formation {
  /// Returns a new [Formation] instance.
  Formation({
    this.alreadyIncorporated,
    this.capTableImported,
    this.createdAt,
    this.documentIds = const [],
    this.esignRef,
    this.filing,
    this.founders = const [],
    this.genesis,
    this.imported,
    this.importedDocs = const [],
    this.jurisdiction,
    this.name,
    this.org,
    this.paid,
    this.paymentRef,
    this.signed,
    this.stage,
    this.structure,
    this.updatedAt,
  });

  /// AlreadyIncorporated declares an org that already has a legal entity, which takes the import path (structure → import → company) instead of forming one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? alreadyIncorporated;

  /// CapTableImported reports whether the existing company's cap table has been imported onto the canonical cap table.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? capTableImported;

  /// CreatedAt is the unix second the formation was opened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DocumentIDs are the data room ids of the GENERATED formation documents.
  List<String> documentIds;

  /// EsignRef is the e-signature provider's reference for the signature request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? esignRef;

  /// Filing is the state-of-incorporation filing record, once documents exist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Filing? filing;

  /// Founders is every founding stakeholder, with its equity split and KYC state.
  List<Founder> founders;

  /// Genesis is the cap-table equity genesis, once recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Genesis? genesis;

  /// Imported reports whether the existing company's corporate documents have been ingested into the org's data room.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? imported;

  /// ImportedDocs are the data room ids of the documents ingested from Drive.
  List<String> importedDocs;

  /// Jurisdiction is the state of formation: DE or WY.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jurisdiction;

  /// Name is the company name the entity is being formed under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the owning org — the tenant key, and the reason there is exactly one formation per org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Paid reports whether the one-time formation fee has been charged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? paid;

  /// PaymentRef is the billing reference recorded for the charged formation fee on the org's own ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentRef;

  /// Signed reports whether the formation documents have come back signed — the e-signature provider's answer, which a real provider's webhook drives.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? signed;

  /// Stage is the machine's current state: structure, founders, payment, documents, esign or genesis on the formation path, import on the skip path, and company at the terminal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  /// Structure is the legal entity being formed: c-corp, llc or dao-llc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? structure;

  /// UpdatedAt is the unix second of the most recent write to the formation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Formation &&
    other.alreadyIncorporated == alreadyIncorporated &&
    other.capTableImported == capTableImported &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.documentIds, documentIds) &&
    other.esignRef == esignRef &&
    other.filing == filing &&
    _deepEquality.equals(other.founders, founders) &&
    other.genesis == genesis &&
    other.imported == imported &&
    _deepEquality.equals(other.importedDocs, importedDocs) &&
    other.jurisdiction == jurisdiction &&
    other.name == name &&
    other.org == org &&
    other.paid == paid &&
    other.paymentRef == paymentRef &&
    other.signed == signed &&
    other.stage == stage &&
    other.structure == structure &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alreadyIncorporated == null ? 0 : alreadyIncorporated!.hashCode) +
    (capTableImported == null ? 0 : capTableImported!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (documentIds.hashCode) +
    (esignRef == null ? 0 : esignRef!.hashCode) +
    (filing == null ? 0 : filing!.hashCode) +
    (founders.hashCode) +
    (genesis == null ? 0 : genesis!.hashCode) +
    (imported == null ? 0 : imported!.hashCode) +
    (importedDocs.hashCode) +
    (jurisdiction == null ? 0 : jurisdiction!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (paid == null ? 0 : paid!.hashCode) +
    (paymentRef == null ? 0 : paymentRef!.hashCode) +
    (signed == null ? 0 : signed!.hashCode) +
    (stage == null ? 0 : stage!.hashCode) +
    (structure == null ? 0 : structure!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Formation[alreadyIncorporated=$alreadyIncorporated, capTableImported=$capTableImported, createdAt=$createdAt, documentIds=$documentIds, esignRef=$esignRef, filing=$filing, founders=$founders, genesis=$genesis, imported=$imported, importedDocs=$importedDocs, jurisdiction=$jurisdiction, name=$name, org=$org, paid=$paid, paymentRef=$paymentRef, signed=$signed, stage=$stage, structure=$structure, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alreadyIncorporated != null) {
      json[r'alreadyIncorporated'] = this.alreadyIncorporated;
    } else {
      json[r'alreadyIncorporated'] = null;
    }
    if (this.capTableImported != null) {
      json[r'capTableImported'] = this.capTableImported;
    } else {
      json[r'capTableImported'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
      json[r'documentIds'] = this.documentIds;
    if (this.esignRef != null) {
      json[r'esignRef'] = this.esignRef;
    } else {
      json[r'esignRef'] = null;
    }
    if (this.filing != null) {
      json[r'filing'] = this.filing;
    } else {
      json[r'filing'] = null;
    }
      json[r'founders'] = this.founders;
    if (this.genesis != null) {
      json[r'genesis'] = this.genesis;
    } else {
      json[r'genesis'] = null;
    }
    if (this.imported != null) {
      json[r'imported'] = this.imported;
    } else {
      json[r'imported'] = null;
    }
      json[r'importedDocs'] = this.importedDocs;
    if (this.jurisdiction != null) {
      json[r'jurisdiction'] = this.jurisdiction;
    } else {
      json[r'jurisdiction'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.paid != null) {
      json[r'paid'] = this.paid;
    } else {
      json[r'paid'] = null;
    }
    if (this.paymentRef != null) {
      json[r'paymentRef'] = this.paymentRef;
    } else {
      json[r'paymentRef'] = null;
    }
    if (this.signed != null) {
      json[r'signed'] = this.signed;
    } else {
      json[r'signed'] = null;
    }
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
    if (this.structure != null) {
      json[r'structure'] = this.structure;
    } else {
      json[r'structure'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Formation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Formation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Formation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Formation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Formation(
        alreadyIncorporated: mapValueOfType<bool>(json, r'alreadyIncorporated'),
        capTableImported: mapValueOfType<bool>(json, r'capTableImported'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        documentIds: json[r'documentIds'] is Iterable
            ? (json[r'documentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        esignRef: mapValueOfType<String>(json, r'esignRef'),
        filing: Filing.fromJson(json[r'filing']),
        founders: Founder.listFromJson(json[r'founders']),
        genesis: Genesis.fromJson(json[r'genesis']),
        imported: mapValueOfType<bool>(json, r'imported'),
        importedDocs: json[r'importedDocs'] is Iterable
            ? (json[r'importedDocs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jurisdiction: mapValueOfType<String>(json, r'jurisdiction'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        paid: mapValueOfType<bool>(json, r'paid'),
        paymentRef: mapValueOfType<String>(json, r'paymentRef'),
        signed: mapValueOfType<bool>(json, r'signed'),
        stage: mapValueOfType<String>(json, r'stage'),
        structure: mapValueOfType<String>(json, r'structure'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<Formation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Formation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Formation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Formation> mapFromJson(dynamic json) {
    final map = <String, Formation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Formation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Formation-objects as value to a dart map
  static Map<String, List<Formation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Formation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Formation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

