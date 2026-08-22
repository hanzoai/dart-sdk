//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingHealthView {
  /// Returns a new [LicensingHealthView] instance.
  LicensingHealthView({
    this.env,
    this.service,
    this.signer,
    this.status,
  });
  /// Env is the deployment environment (\"dev\" | \"staging\" | \"prod\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// Service is always \"licensing\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Signer names the KMS provider signing licenses here. \"local\" means a development key: tokens it mints are not production credentials.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signer;

  /// Status is \"ok\" whenever the process is up — this is not a dependency probe.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingHealthView &&
    other.env == env &&
    other.service == service &&
    other.signer == signer &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (env == null ? 0 : env!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (signer == null ? 0 : signer!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'LicensingHealthView[env=$env, service=$service, signer=$signer, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.env != null) {
      json[r'env'] = this.env;
    } else {
      json[r'env'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.signer != null) {
      json[r'signer'] = this.signer;
    } else {
      json[r'signer'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingHealthView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingHealthView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingHealthView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingHealthView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingHealthView(
        env: mapValueOfType<String>(json, r'env'),
        service: mapValueOfType<String>(json, r'service'),
        signer: mapValueOfType<String>(json, r'signer'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<LicensingHealthView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingHealthView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingHealthView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingHealthView> mapFromJson(dynamic json) {
    final map = <String, LicensingHealthView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingHealthView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingHealthView-objects as value to a dart map
  static Map<String, List<LicensingHealthView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingHealthView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingHealthView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

