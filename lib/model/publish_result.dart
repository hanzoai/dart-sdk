//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PublishResult {
  /// Returns a new [PublishResult] instance.
  PublishResult({
    this.channels = const [],
    this.externalIds = const {},
    this.results = const [],
    this.status,
  });

  List<String> channels;

  Map<String, String> externalIds;

  List<ChannelResult> results;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublishResult &&
    _deepEquality.equals(other.channels, channels) &&
    _deepEquality.equals(other.externalIds, externalIds) &&
    _deepEquality.equals(other.results, results) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channels.hashCode) +
    (externalIds.hashCode) +
    (results.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'PublishResult[channels=$channels, externalIds=$externalIds, results=$results, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'channels'] = this.channels;
      json[r'externalIds'] = this.externalIds;
      json[r'results'] = this.results;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [PublishResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublishResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublishResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublishResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublishResult(
        channels: json[r'channels'] is Iterable
            ? (json[r'channels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        externalIds: mapCastOfType<String, String>(json, r'externalIds') ?? const {},
        results: ChannelResult.listFromJson(json[r'results']),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<PublishResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublishResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublishResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublishResult> mapFromJson(dynamic json) {
    final map = <String, PublishResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublishResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublishResult-objects as value to a dart map
  static Map<String, List<PublishResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublishResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublishResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

