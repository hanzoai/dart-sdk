//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Enrollment {
  /// Returns a new [Enrollment] instance.
  Enrollment({
    this.address,
    this.channel,
    this.currentStep,
    this.enrolledAt,
    this.id,
    this.nextRunAt,
    this.sequenceId,
    this.status,
    this.updatedAt,
  });
  /// Address is the normalized (lower-cased, trimmed) recipient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// Channel is the delivery surface the steps go out on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// CurrentStep is the index of the step that sends next.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentStep;

  /// EnrolledAt is unix seconds when the contact joined the walk, and orders the enrollment list (newest first).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? enrolledAt;

  /// ID is the server-assigned enrollment id (\"enr_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// NextRunAt is the unix time the current step comes due; 0 once the walk has ended. It IS the schedule — durable in SQLite, so it survives restarts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextRunAt;

  /// SequenceID is the sequence being walked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sequenceId;

  /// Status is active, completed or canceled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is unix seconds of the last move: the drip engine writes it each time it advances the walk a step, completes it or cancels it. Together with Status it says when the walk last did anything, which is how a stalled enrollment is told from a finished one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Enrollment &&
    other.address == address &&
    other.channel == channel &&
    other.currentStep == currentStep &&
    other.enrolledAt == enrolledAt &&
    other.id == id &&
    other.nextRunAt == nextRunAt &&
    other.sequenceId == sequenceId &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (currentStep == null ? 0 : currentStep!.hashCode) +
    (enrolledAt == null ? 0 : enrolledAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (nextRunAt == null ? 0 : nextRunAt!.hashCode) +
    (sequenceId == null ? 0 : sequenceId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Enrollment[address=$address, channel=$channel, currentStep=$currentStep, enrolledAt=$enrolledAt, id=$id, nextRunAt=$nextRunAt, sequenceId=$sequenceId, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.currentStep != null) {
      json[r'currentStep'] = this.currentStep;
    } else {
      json[r'currentStep'] = null;
    }
    if (this.enrolledAt != null) {
      json[r'enrolledAt'] = this.enrolledAt;
    } else {
      json[r'enrolledAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.nextRunAt != null) {
      json[r'nextRunAt'] = this.nextRunAt;
    } else {
      json[r'nextRunAt'] = null;
    }
    if (this.sequenceId != null) {
      json[r'sequenceId'] = this.sequenceId;
    } else {
      json[r'sequenceId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Enrollment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Enrollment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Enrollment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Enrollment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Enrollment(
        address: mapValueOfType<String>(json, r'address'),
        channel: mapValueOfType<String>(json, r'channel'),
        currentStep: mapValueOfType<int>(json, r'currentStep'),
        enrolledAt: mapValueOfType<int>(json, r'enrolledAt'),
        id: mapValueOfType<String>(json, r'id'),
        nextRunAt: mapValueOfType<int>(json, r'nextRunAt'),
        sequenceId: mapValueOfType<String>(json, r'sequenceId'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<Enrollment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Enrollment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Enrollment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Enrollment> mapFromJson(dynamic json) {
    final map = <String, Enrollment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Enrollment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Enrollment-objects as value to a dart map
  static Map<String, List<Enrollment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Enrollment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Enrollment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

