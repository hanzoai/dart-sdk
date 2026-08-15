//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TLSConfig {
  /// Returns a new [TLSConfig] instance.
  TLSConfig({
    this.acmeEmail,
    this.extraHosts = const [],
    this.staging,
  });

  /// ACMEEmail is the ACME account email. It binds an account for the lifetime of an edge process, so it applies only when the edge (re)starts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? acmeEmail;

  /// ExtraHosts get certificates without owning a route — at most 256. They feed the ACME HostPolicy and hot-apply on the next reload.
  List<String> extraHosts;

  /// Staging issues from Let's Encrypt's staging directory (untrusted certs, high rate limits). Like ACMEEmail it applies only when the edge (re)starts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? staging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TLSConfig &&
    other.acmeEmail == acmeEmail &&
    _deepEquality.equals(other.extraHosts, extraHosts) &&
    other.staging == staging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (acmeEmail == null ? 0 : acmeEmail!.hashCode) +
    (extraHosts.hashCode) +
    (staging == null ? 0 : staging!.hashCode);

  @override
  String toString() => 'TLSConfig[acmeEmail=$acmeEmail, extraHosts=$extraHosts, staging=$staging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.acmeEmail != null) {
      json[r'acmeEmail'] = this.acmeEmail;
    } else {
      json[r'acmeEmail'] = null;
    }
      json[r'extraHosts'] = this.extraHosts;
    if (this.staging != null) {
      json[r'staging'] = this.staging;
    } else {
      json[r'staging'] = null;
    }
    return json;
  }

  /// Returns a new [TLSConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TLSConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TLSConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TLSConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TLSConfig(
        acmeEmail: mapValueOfType<String>(json, r'acmeEmail'),
        extraHosts: json[r'extraHosts'] is Iterable
            ? (json[r'extraHosts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        staging: mapValueOfType<bool>(json, r'staging'),
      );
    }
    return null;
  }

  static List<TLSConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TLSConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TLSConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TLSConfig> mapFromJson(dynamic json) {
    final map = <String, TLSConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TLSConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TLSConfig-objects as value to a dart map
  static Map<String, List<TLSConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TLSConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TLSConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

