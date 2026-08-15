//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SetEnablementBody {
  /// Returns a new [SetEnablementBody] instance.
  SetEnablementBody({
    this.betaOrgs = const [],
    this.id,
    this.kind,
    this.state,
  });

  /// BetaOrgs REPLACES the item's beta grant list when present. Omit it to leave the existing grants alone.
  List<String> betaOrgs;

  /// ID is the item within that namespace — a model id, a provider name, or a feature's key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the item's namespace: \"model\", \"provider\" or \"feature\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// State is the item's global enablement: \"off\" (hidden from everyone, absolutely), \"beta\" (visible only to granted orgs) or \"ga\" (visible to everyone). Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetEnablementBody &&
    _deepEquality.equals(other.betaOrgs, betaOrgs) &&
    other.id == id &&
    other.kind == kind &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (betaOrgs.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (state == null ? 0 : state!.hashCode);

  @override
  String toString() => 'SetEnablementBody[betaOrgs=$betaOrgs, id=$id, kind=$kind, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'betaOrgs'] = this.betaOrgs;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    return json;
  }

  /// Returns a new [SetEnablementBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetEnablementBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetEnablementBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetEnablementBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetEnablementBody(
        betaOrgs: json[r'betaOrgs'] is Iterable
            ? (json[r'betaOrgs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        state: mapValueOfType<String>(json, r'state'),
      );
    }
    return null;
  }

  static List<SetEnablementBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetEnablementBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetEnablementBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetEnablementBody> mapFromJson(dynamic json) {
    final map = <String, SetEnablementBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetEnablementBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetEnablementBody-objects as value to a dart map
  static Map<String, List<SetEnablementBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetEnablementBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetEnablementBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

