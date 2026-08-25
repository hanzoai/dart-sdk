//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReconcileReport {
  /// Returns a new [ReconcileReport] instance.
  ReconcileReport({
    this.declared,
    this.failed,
    this.instance,
    this.prune,
    this.pruned,
    this.results = const [],
    this.revision,
    this.source_,
    this.synced,
  });
  /// Declared is how many objects the rendered source declares — the denominator the three outcome counts below are read against. Zero means the render produced nothing, which trips the prune fuse rather than sweeping the fleet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? declared;

  /// Failed is how many objects the apply could not reconcile. Non-zero is a PARTIAL run reported at 200: the engine applied what it could and each failure names itself in Results, so a caller reads this number rather than the status code to learn whether the fleet matches the source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  /// Instance is the tracking id this run stamps on everything it manages, so a later run can tell the objects it owns from objects another instance declares. DEPLOY_ENGINE_INSTANCE names it; the default is `universe`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instance;

  /// Prune reports whether DELETION was enabled for this run. False means an object the source no longer declares was left alone rather than removed, so a zero Pruned below means \"nothing to delete\" only when this is true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? prune;

  /// Pruned is how many live objects this run DELETED because the source no longer declares them. Always 0 when Prune is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pruned;

  /// Results is one entry per object the run acted on, in the order the engine applied them. Empty (never null) when the run reconciled nothing.
  List<AppliedResource> results;

  /// Revision is the source commit this run applied, as the source resolved it — a git commit SHA, not an image tag. It is what an operator cites when asking what the cluster was last made to match.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revision;

  /// Source is the git coordinate the run rendered. It is this deployment's own configuration echoed back, never a request parameter, and it is reported so a reader of the answer knows WHICH tree the revision names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReconcileSource? source_;

  /// Synced is how many objects the run applied successfully.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? synced;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReconcileReport &&
    other.declared == declared &&
    other.failed == failed &&
    other.instance == instance &&
    other.prune == prune &&
    other.pruned == pruned &&
    _deepEquality.equals(other.results, results) &&
    other.revision == revision &&
    other.source_ == source_ &&
    other.synced == synced;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (declared == null ? 0 : declared!.hashCode) +
    (failed == null ? 0 : failed!.hashCode) +
    (instance == null ? 0 : instance!.hashCode) +
    (prune == null ? 0 : prune!.hashCode) +
    (pruned == null ? 0 : pruned!.hashCode) +
    (results.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (synced == null ? 0 : synced!.hashCode);

  @override
  String toString() => 'ReconcileReport[declared=$declared, failed=$failed, instance=$instance, prune=$prune, pruned=$pruned, results=$results, revision=$revision, source_=$source_, synced=$synced]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.declared != null) {
      json[r'declared'] = this.declared;
    } else {
      json[r'declared'] = null;
    }
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.instance != null) {
      json[r'instance'] = this.instance;
    } else {
      json[r'instance'] = null;
    }
    if (this.prune != null) {
      json[r'prune'] = this.prune;
    } else {
      json[r'prune'] = null;
    }
    if (this.pruned != null) {
      json[r'pruned'] = this.pruned;
    } else {
      json[r'pruned'] = null;
    }
      json[r'results'] = this.results;
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.synced != null) {
      json[r'synced'] = this.synced;
    } else {
      json[r'synced'] = null;
    }
    return json;
  }

  /// Returns a new [ReconcileReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReconcileReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReconcileReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReconcileReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReconcileReport(
        declared: mapValueOfType<int>(json, r'declared'),
        failed: mapValueOfType<int>(json, r'failed'),
        instance: mapValueOfType<String>(json, r'instance'),
        prune: mapValueOfType<bool>(json, r'prune'),
        pruned: mapValueOfType<int>(json, r'pruned'),
        results: AppliedResource.listFromJson(json[r'results']),
        revision: mapValueOfType<String>(json, r'revision'),
        source_: ReconcileSource.fromJson(json[r'source']),
        synced: mapValueOfType<int>(json, r'synced'),
      );
    }
    return null;
  }

  static List<ReconcileReport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReconcileReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReconcileReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReconcileReport> mapFromJson(dynamic json) {
    final map = <String, ReconcileReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReconcileReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReconcileReport-objects as value to a dart map
  static Map<String, List<ReconcileReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReconcileReport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReconcileReport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

