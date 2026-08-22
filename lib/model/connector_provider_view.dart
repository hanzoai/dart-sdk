//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectorProviderView {
  /// Returns a new [ConnectorProviderView] instance.
  ConnectorProviderView({
    this.category,
    this.description,
    this.id,
    this.methods = const [],
    this.name,
    this.scopes = const [],
  });
  /// Category groups the card.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Description is the one-line pitch the console card shows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the provider's registry id and the :provider path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Methods are the intake paths this provider supports, derived from its capabilities: \"device\", \"oauth\" (adopt an externally obtained bundle) and \"token\" (a customer-held credential). At least one, always.
  List<String> methods;

  /// Name is the provider's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Scopes are the permissions a connection will ask for. Never null.
  List<String> scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorProviderView &&
    other.category == category &&
    other.description == description &&
    other.id == id &&
    _deepEquality.equals(other.methods, methods) &&
    other.name == name &&
    _deepEquality.equals(other.scopes, scopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (methods.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scopes.hashCode);

  @override
  String toString() => 'ConnectorProviderView[category=$category, description=$description, id=$id, methods=$methods, name=$name, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'methods'] = this.methods;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'scopes'] = this.scopes;
    return json;
  }

  /// Returns a new [ConnectorProviderView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorProviderView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorProviderView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorProviderView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorProviderView(
        category: mapValueOfType<String>(json, r'category'),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        methods: json[r'methods'] is Iterable
            ? (json[r'methods'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConnectorProviderView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorProviderView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorProviderView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorProviderView> mapFromJson(dynamic json) {
    final map = <String, ConnectorProviderView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorProviderView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorProviderView-objects as value to a dart map
  static Map<String, List<ConnectorProviderView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorProviderView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorProviderView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

