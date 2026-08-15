//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateEndpointIn {
  /// Returns a new [CreateEndpointIn] instance.
  CreateEndpointIn({
    this.description,
    this.events = const [],
    this.status,
    this.url,
  });

  /// Description is a free-text label for the console. Optional, clipped to 1024 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Events are NATS subject patterns to subscribe to (e.g. \"commerce.order.>\"). An empty or omitted list means EVERY event on the platform bus. Max 64 patterns, each max 256 bytes.
  List<String> events;

  /// Status is \"active\" or \"disabled\". Empty defaults to active. A disabled endpoint receives no bus deliveries, but can still be exercised with POST /v1/webhooks/{id}/test.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// URL is the https:// address each matching event is POSTed to. Required, max 2048 bytes; http:// and every other scheme is refused, because a webhook carries signed event data and must not travel in the clear.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEndpointIn &&
    other.description == description &&
    _deepEquality.equals(other.events, events) &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (events.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CreateEndpointIn[description=$description, events=$events, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'events'] = this.events;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [CreateEndpointIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEndpointIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEndpointIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEndpointIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEndpointIn(
        description: mapValueOfType<String>(json, r'description'),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<CreateEndpointIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEndpointIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEndpointIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEndpointIn> mapFromJson(dynamic json) {
    final map = <String, CreateEndpointIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEndpointIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEndpointIn-objects as value to a dart map
  static Map<String, List<CreateEndpointIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEndpointIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateEndpointIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

