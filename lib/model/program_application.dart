//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProgramApplication {
  /// Returns a new [ProgramApplication] instance.
  ProgramApplication({
    this.company,
    this.companyId,
    this.contactId,
    this.contactName,
    this.createdAt,
    this.email,
    this.events = const [],
    this.id,
    this.metadata = const {},
    this.reason,
    this.role,
    this.screen,
    this.stage,
    this.tier1,
    this.updatedAt,
    this.website,
  });

  /// Company is the applicant's company name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  /// CompanyID is the CRM Company minted for this lead at intake, so the startup also appears in the org's standard CRM tabs. Empty when that best-effort projection did not run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyId;

  /// ContactID is the CRM Contact minted for this lead at intake. Empty when that best-effort projection did not run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactId;

  /// ContactName is the person who applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contactName;

  /// CreatedAt is the unix second the application arrived. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Email is the applicant's email — half of the (email, company) key a resubmission refreshes instead of duplicating.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Events is the append-only stage-transition log, oldest first.
  List<StageEvent> events;

  /// ID is the server-minted application id (\"appl_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Metadata is the FULL submitted form, every field, including the arrays the promoted columns above do not carry (tier1Investors, useCases) and the deterministic tier1Matched list.
  Map<String, Object> metadata;

  /// Reason is why the application was rejected, required to reject. Empty otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Role is the applicant's role at their company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// Screen is the AI screen. It runs after intake, so a freshly created application carries a \"pending\" screen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScreenResult? screen;

  /// Stage is the pipeline stage: applied, screened, qualified, credits-offered, onboarded or rejected. Server-owned — it starts at \"applied\" and moves only through the transition machine.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  /// Tier1 is whether the applicant is tier-1 backed, derived deterministically at intake from the submitted fund list — independent of the AI screen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tier1;

  /// UpdatedAt is the unix second of the last write. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// Website is the applicant's website as submitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? website;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProgramApplication &&
    other.company == company &&
    other.companyId == companyId &&
    other.contactId == contactId &&
    other.contactName == contactName &&
    other.createdAt == createdAt &&
    other.email == email &&
    _deepEquality.equals(other.events, events) &&
    other.id == id &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.reason == reason &&
    other.role == role &&
    other.screen == screen &&
    other.stage == stage &&
    other.tier1 == tier1 &&
    other.updatedAt == updatedAt &&
    other.website == website;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (company == null ? 0 : company!.hashCode) +
    (companyId == null ? 0 : companyId!.hashCode) +
    (contactId == null ? 0 : contactId!.hashCode) +
    (contactName == null ? 0 : contactName!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (events.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (metadata.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (screen == null ? 0 : screen!.hashCode) +
    (stage == null ? 0 : stage!.hashCode) +
    (tier1 == null ? 0 : tier1!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (website == null ? 0 : website!.hashCode);

  @override
  String toString() => 'ProgramApplication[company=$company, companyId=$companyId, contactId=$contactId, contactName=$contactName, createdAt=$createdAt, email=$email, events=$events, id=$id, metadata=$metadata, reason=$reason, role=$role, screen=$screen, stage=$stage, tier1=$tier1, updatedAt=$updatedAt, website=$website]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
    if (this.companyId != null) {
      json[r'companyId'] = this.companyId;
    } else {
      json[r'companyId'] = null;
    }
    if (this.contactId != null) {
      json[r'contactId'] = this.contactId;
    } else {
      json[r'contactId'] = null;
    }
    if (this.contactName != null) {
      json[r'contactName'] = this.contactName;
    } else {
      json[r'contactName'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
      json[r'events'] = this.events;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.screen != null) {
      json[r'screen'] = this.screen;
    } else {
      json[r'screen'] = null;
    }
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
    if (this.tier1 != null) {
      json[r'tier1'] = this.tier1;
    } else {
      json[r'tier1'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    return json;
  }

  /// Returns a new [ProgramApplication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProgramApplication? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProgramApplication[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProgramApplication[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProgramApplication(
        company: mapValueOfType<String>(json, r'company'),
        companyId: mapValueOfType<String>(json, r'companyId'),
        contactId: mapValueOfType<String>(json, r'contactId'),
        contactName: mapValueOfType<String>(json, r'contactName'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        email: mapValueOfType<String>(json, r'email'),
        events: StageEvent.listFromJson(json[r'events']),
        id: mapValueOfType<String>(json, r'id'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        reason: mapValueOfType<String>(json, r'reason'),
        role: mapValueOfType<String>(json, r'role'),
        screen: ScreenResult.fromJson(json[r'screen']),
        stage: mapValueOfType<String>(json, r'stage'),
        tier1: mapValueOfType<bool>(json, r'tier1'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        website: mapValueOfType<String>(json, r'website'),
      );
    }
    return null;
  }

  static List<ProgramApplication> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProgramApplication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProgramApplication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProgramApplication> mapFromJson(dynamic json) {
    final map = <String, ProgramApplication>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProgramApplication.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProgramApplication-objects as value to a dart map
  static Map<String, List<ProgramApplication>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProgramApplication>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProgramApplication.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

