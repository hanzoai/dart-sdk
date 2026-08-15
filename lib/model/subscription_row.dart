//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubscriptionRow {
  /// Returns a new [SubscriptionRow] instance.
  SubscriptionRow({
    this.display,
    this.id,
    this.mrrCents,
    this.org,
    this.plan,
    this.renews,
    this.started,
    this.status,
    this.user,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? renews;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? started;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubscriptionRow &&
    other.display == display &&
    other.id == id &&
    other.mrrCents == mrrCents &&
    other.org == org &&
    other.plan == plan &&
    other.renews == renews &&
    other.started == started &&
    other.status == status &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (display == null ? 0 : display!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (renews == null ? 0 : renews!.hashCode) +
    (started == null ? 0 : started!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'SubscriptionRow[display=$display, id=$id, mrrCents=$mrrCents, org=$org, plan=$plan, renews=$renews, started=$started, status=$status, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.renews != null) {
      json[r'renews'] = this.renews;
    } else {
      json[r'renews'] = null;
    }
    if (this.started != null) {
      json[r'started'] = this.started;
    } else {
      json[r'started'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [SubscriptionRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubscriptionRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubscriptionRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubscriptionRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubscriptionRow(
        display: mapValueOfType<String>(json, r'display'),
        id: mapValueOfType<String>(json, r'id'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        org: mapValueOfType<String>(json, r'org'),
        plan: mapValueOfType<String>(json, r'plan'),
        renews: mapValueOfType<String>(json, r'renews'),
        started: mapValueOfType<String>(json, r'started'),
        status: mapValueOfType<String>(json, r'status'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<SubscriptionRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubscriptionRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubscriptionRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubscriptionRow> mapFromJson(dynamic json) {
    final map = <String, SubscriptionRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubscriptionRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubscriptionRow-objects as value to a dart map
  static Map<String, List<SubscriptionRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubscriptionRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubscriptionRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

