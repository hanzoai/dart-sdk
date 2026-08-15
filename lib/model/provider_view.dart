//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProviderView {
  /// Returns a new [ProviderView] instance.
  ProviderView({
    this.available,
    this.category,
    this.connected,
    this.connection,
    this.description,
    this.id,
    this.name,
  });

  /// Available is whether THIS DEPLOYMENT has the provider's app credentials, so connect can succeed. False renders the card without a working Connect button.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Category groups the card (\"Communication\", \"Developer\", \"Marketing\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Connected is whether this org has a live connection to the provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  /// Connection is the connected account's non-secret detail. Absent when the org has no connection; tokens NEVER appear here (they live only in KMS).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectionView? connection;

  /// Description is the one-line pitch the console card shows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the provider's registry id and the :provider path segment (\"slack\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the provider's display name (\"Slack\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderView &&
    other.available == available &&
    other.category == category &&
    other.connected == connected &&
    other.connection == connection &&
    other.description == description &&
    other.id == id &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (connection == null ? 0 : connection!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ProviderView[available=$available, category=$category, connected=$connected, connection=$connection, description=$description, id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.connection != null) {
      json[r'connection'] = this.connection;
    } else {
      json[r'connection'] = null;
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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ProviderView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderView(
        available: mapValueOfType<bool>(json, r'available'),
        category: mapValueOfType<String>(json, r'category'),
        connected: mapValueOfType<bool>(json, r'connected'),
        connection: ConnectionView.fromJson(json[r'connection']),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ProviderView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderView> mapFromJson(dynamic json) {
    final map = <String, ProviderView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderView-objects as value to a dart map
  static Map<String, List<ProviderView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

