//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConsumerWrite {
  /// Returns a new [ConsumerWrite] instance.
  ConsumerWrite({
    this.ack,
    this.ackWait,
    this.deliver,
    this.filter,
    this.maxDeliver,
    this.name,
    this.stream,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ack;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ackWait;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deliver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxDeliver;

  /// Name is the durable consumer name: 1–64 of [A-Za-z0-9_-].
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Stream is the stream to consume, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsumerWrite &&
    other.ack == ack &&
    other.ackWait == ackWait &&
    other.deliver == deliver &&
    other.filter == filter &&
    other.maxDeliver == maxDeliver &&
    other.name == name &&
    other.stream == stream;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ack == null ? 0 : ack!.hashCode) +
    (ackWait == null ? 0 : ackWait!.hashCode) +
    (deliver == null ? 0 : deliver!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (maxDeliver == null ? 0 : maxDeliver!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (stream == null ? 0 : stream!.hashCode);

  @override
  String toString() => 'ConsumerWrite[ack=$ack, ackWait=$ackWait, deliver=$deliver, filter=$filter, maxDeliver=$maxDeliver, name=$name, stream=$stream]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ack != null) {
      json[r'ack'] = this.ack;
    } else {
      json[r'ack'] = null;
    }
    if (this.ackWait != null) {
      json[r'ackWait'] = this.ackWait;
    } else {
      json[r'ackWait'] = null;
    }
    if (this.deliver != null) {
      json[r'deliver'] = this.deliver;
    } else {
      json[r'deliver'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.maxDeliver != null) {
      json[r'maxDeliver'] = this.maxDeliver;
    } else {
      json[r'maxDeliver'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    return json;
  }

  /// Returns a new [ConsumerWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsumerWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsumerWrite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsumerWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsumerWrite(
        ack: mapValueOfType<String>(json, r'ack'),
        ackWait: mapValueOfType<int>(json, r'ackWait'),
        deliver: mapValueOfType<String>(json, r'deliver'),
        filter: mapValueOfType<String>(json, r'filter'),
        maxDeliver: mapValueOfType<int>(json, r'maxDeliver'),
        name: mapValueOfType<String>(json, r'name'),
        stream: mapValueOfType<String>(json, r'stream'),
      );
    }
    return null;
  }

  static List<ConsumerWrite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsumerWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsumerWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsumerWrite> mapFromJson(dynamic json) {
    final map = <String, ConsumerWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsumerWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsumerWrite-objects as value to a dart map
  static Map<String, List<ConsumerWrite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsumerWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsumerWrite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

